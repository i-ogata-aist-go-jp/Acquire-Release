# CPP

apple社の Rosseta 2 は、なぜ速いのか？　を説明するために C++20 と RUST のコードを作ってみました。

（概要）

最新の macbook air や mac mini は爆速ですよね。心臓の apple silicon M1 という SoC は消費電力あたりで史上最高のプロセッサであるから当然です。 TSMC 5nm を採用し 160億トランジスタを集積していて、 100億トランジスタ前後の intel や AMD に対して明らかにアドバンテージがある。

M1 の CPU は ARMv8 アーキテクチャです。　macbook / mac mini は、これまでは intel を使っていました。 x86  -> ARMv8 の移行を助けるために、 x86 バイナリーを emulation する Rosseta2 というシステムが提供されています。これがまた爆速なのですが、そこには秘密があります。

x86 を ARMv8 で emulation する障害の一つが memory model の違いです。 x86 は Total Store Order (TSO) であり ARMv8 は Acquire-Release　semantics なのです。つまり memory barrier 命令の違いがあり、x86 を ARMv8 で『効率よく』 emulation するのは難しい。

そこで apple は特別な「互換モード」をハードウェア的に付け加えたらしいのです（この情報は公開されていなくて、現時点では噂）

(memory barrier) 

x86 の TSO セマンティクスでは、 Load / Load 及び Store / Store というシーケンスは、機械語命令の順番に沿って直列に実行されます。 Out-of-Order 実行 (OoOE) の対象外なので、当然 OoOE を制限する memory barrier 命令は不要です。

※　 X86 では MOV (from memory) と MOV (to memory) と、 load / store のどちらも同じニーモニックの MOV 命令になって紛らわしいことに注意して下しい。

その一方で ARMv8 では OoOE を許す LDR/STR と、OoOE に制限がかかる LDAR/STLR ( load Acquire / store reLease )　の２系統の命令があります。後者が memory barrier の機能を提供します。 この時 x86 の MOV (from memory) を  ldar を使えば遅くなることが問題。 ldr を並列に実行出来ることの trade-off として ldar は「重く」なっているからです。

ここが memory model の違いの問題の本質です。

（実際のコードで説明する）

https://en.wikipedia.org/wiki/Memory_barrier

memory barrier についての wikipedia を題材に x86 と ARMv8 の memory model の違いの説明を試みています。おおまかな作戦は以下の通り。

memory model の違いが分かる最小のサンプルコードを作ってみる。
プログラミング言語のレベルで Acquire-Release semanitcs を採用する C++20 と RUST で示す。
コードを x86 と ARMv8 をターゲットに compile し、その assembler の出力が違うことを見せる。

（結果）
c++20
https://godbolt.org/z/df7cfv
https://godbolt.org/z/6r5j13

RUST
https://godbolt.org/z/59sePW
https://godbolt.org/z/bbEohq

（Acquire Release Semantics について）

(RCsc maintains sequential consistency among special operations)

All operations following an acquire in program order also following it in global memory order

All operations preceding a release in program order also precede it in global memory order

A release that precedes an acquire in program order also precedes it in global memory order


store release = git push  、  load acquire = git pull というアナロジーは有用である。

store release 　STRL で書き出され  load acquire　LDRA で読みだされる「フラッグ」は  git の header に相当し、それ以外で  store / load されるものはデータ（ファイル）に相当する。
ファイルを編集（変更）した結果がすべて repository に書き込んだ上で header を更新するのが git push  である。
header を読み取り、ファイルの変更を repository から読み出すのが git pull である。
git pull した情報は header 情報に対して consistent である。最新ではなくても、 consistent であることが重要。

(Reference)

 RISC-V Weak Memory Ordering (“RVWMO”)  by Dan Lustig

https://riscv.org/wp-content/uploads/2018/05/14.25-15.00-RISCVMemoryModelTutorial.pdf

（References）

C/C++11 mappings to processors 
https://www.cl.cam.ac.uk/~pes20/cpp/cpp0xmappings.html

x86 (including x86-64)
Load Relaxed:	MOV (from memory)
Load Acquire:	MOV (from memory)
Store Relaxed:	MOV (into memory)
Store Release:	MOV (into memory)

AArch64
Load Relaxed:	LDR
Load Acquire:	LDAR
Store Relaxed:	STR
Store Release:	STLR

（References）

https://arxiv.org/pdf/1803.04432.pdf
Memory Models for C/C++ Programmers
Manuel P¨oter
Jesper Larsson Tr¨af

（References）

https://preshing.com/20120913/acquire-and-release-semantics/
Acquire and Release Semantics

（memo）
cross compiler
$ arm-linux-gnueabihf-gcc -o hello_arm hello.cpp
