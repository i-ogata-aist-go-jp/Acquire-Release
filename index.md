# Apple macbook air (2020,M1) の Rossetta 2 爆速の謎を解く

心臓部の SoC [apple silicon M1](https://en.wikipedia.org/wiki/Apple_M1) 
が消費電力あたりで史上最高のプロセッサであることは、既に広く解説されている通りです。
しかし
[Rosseta2](https://en.wikipedia.org/wiki/Rosetta_(software)#Rosetta_2)
が爆速についての適切な解説は少ないように感じます。（Rosetta2 は X86 のバイナリーをそのまま ARMv8 で emulation するアプリ）
実は、これを理解するためには技術的にはちょっと複雑な知識 
（
[memory barrier](https://en.wikipedia.org/wiki/Memory_barrier) /
[memory model](https://en.wikipedia.org/wiki/Memory_model_(programming)) /
[memory ordering](https://en.wikipedia.org/wiki/Memory_ordering)
）
が必要となります。
そこで理解を助けるための `C++20` と `RUST` のコードを作ってみました。

## 概要

最新の macbook air や mac mini は爆速ですよね。心臓の apple silicon M1 という SoC は消費電力あたりで史上最高のプロセッサです。 TSMC 5nm (N5) という最先端のプロセスを採用し 160億トランジスタを集積しています。

M1 の CPU は ARMv8 アーキテクチャです。　macbook / mac mini は、これまでは intel を使っていました。 x86 -> ARMv8 の移行を助けるために、 x86 バイナリーを emulation する Rosseta2 というシステムが提供されています。これがまた爆速なのですが、そこには秘密があります。

x86 を ARMv8 で emulation する障害の一つが memory model の違いです。 x86 は Total Store Order (TSO) であり ARMv8 は Acquire-Release　semantics なのです。つまり memory barrier 命令の違いがあり、x86 を ARMv8 で『効率よく』 emulation するのは難しい。

そこで apple は特別な「互換モード」をハードウェア的に付け加えたらしいのです（この情報は公開されていなくて、現時点では噂）

## Rosetta2 の爆速の秘密を一言で言えば『x86 と ARMv8 の memory ordering の違いを互換モードで解決する力技』

これを理解してもらうことが本稿の目的です。

Apple の 
[Rosseta2](https://en.wikipedia.org/wiki/Rosetta_(software)#Rosetta_2) 
は intel x86 の機械語を ARMv8 の機械語で emulate して実行する仕組みです。爆速を実現するためにハードウェア（互換モード）の追加が必要だったという噂（未公開情報）です。
具体的には load / store 命令の out-of-order 実行を制限するモードがある（らしい）のです。

このモードの必要性を理解には、以下の知識が必要です。

1. 共有メモリのmulti-thread の環境での [memory barrier](https://en.wikipedia.org/wiki/Memory_barrier) について。
2. x86 と ARMv8 の memory ordering の違い。つまり load /  store 命令の Out-of-Order 実行をどう制御するかについてのアーキテクチャ（機械語の構成）の違いについて。具体的には、
 * x86 は Total Store Order (TSO) である。
 * ARMv8 は Acquire Release Order である。

## 方法

1. x86 と ARMv8 の memory model の違いを理解するための、最小のサンプルコードを作った
2. ARMv8 の memory model は Acquire-Release semantics を持つ。そこでプログラミング言語のレベルで Acquire-Release semanitcs を採用していて相性の良い RUST と C++20 を採用する。 
3. サンプルコードを x86 と ARMv8 をターゲットに compile し、その assembler の出力が違うことを [Compiler Explorer](https://godbolt.org/)で見てみる
4.  x86 の MOV 命令が ARMv8 の LDR/STR 命令には変換できないことの説明となっている

## 結果

### RUST

[x86-64](https://godbolt.org/z/df7cfv) 
[ARMv8](https://godbolt.org/z/6r5j13)

### C++20

[X86-64](https://godbolt.org/z/x7j1rc) 
[ARMv8](https://godbolt.org/z/chsbxK)

## 解説

1. x86 の TSO では、 Load / Load 及び Store / Store というシーケンスは、機械語命令の順番に沿って直列に実行されます。
つまり、そもそもが Out-of-Order 実行 (OoOE) の対象外なので、当然 OoOE を制限する memory barrier 命令は不要です。

※　 X86 では MOV (from memory) と MOV (into memory) と、 load / store のどちらも同じニーモニックの MOV 命令になって紛らわしいことに注意して下しい。

2. その一方で ARMv8 では OoOE を許す LDR/STR と、OoOE に制限がかかる LDAR/STLR ( load Acquire / store reLease )　の２系統の命令があります。後者が memory barrier の機能を提供します。 

結論として

1. x86 の MOV (from memory / into memory) を LDR/STR で emulation することは出来ない。multi-thread な環境では意味が違ってしまうからです。
2. もちろん　LDAR/STLR で愚直に emulation をすることは出来ますが、これは overhead が大きすぎる。

そこで apple は LDR/STR を TSO で動かす「互換モード」を M1 に付け加えたようなのです。

## 実際に動くコード

[memory barrier by Wikipedia](https://en.wikipedia.org/wiki/Memory_barrier)

memory barrier についての wikipedia を題材に x86 と ARMv8 の memory model の違いの説明を試みています。おおまかな作戦は以下の通り。

- memory model の違いが分かる最小のサンプルコードを作ることとする。
- プログラミング言語のレベルで Acquire-Release semanitcs を採用する C++20 と RUST で示す。 
- コードを x86 と ARMv8 をターゲットに compile し、その assembler の出力が違うことを  [Compiler Explorer](https://godbolt.org/) で示す。

ちなみに Go は acquire / release semantics はサポートしません。より強力な sequential consistency のみがサポートされます。
Go's atomics Load* and Store* guarantee sequential consistency among the atomic variables (behave like C/C++'s seqconst atomics).

実際に動くコードは [github](https://github.com/i-ogata-aist-go-jp/Acquire-Release)　で公開しています。

1. CPP で make all　　（以下の 2つの make all を実行します）
 - CPP/fuction thread を fuction で呼び出すコード。 　make all でコンパイル。 function/bin/function で実行
 - CPP/closure thread を closure で呼び出すコード。 　make all でコンパイル。 closure/bin/closure で実行
. RUST/ars RUST で書くとこうなる。 cargo run で動きます。

## memory order: 特に ARMv8 が採用する acquire release について

[c++マニュアル](https://cpprefjp.github.io/reference/atomic/memory_order.html)

[c++manual](https://en.cppreference.com/w/cpp/atomic/memory_order)

- All operations following an acquire in program order also following it in global memory order
- All operations preceding a release in program order also precede it in global memory order
- A release that precedes an acquire in program order also precedes it in global memory order

### store release = git push 、 load acquire = git pull というアナロジーは有用である。

データの更新を通知する flag は store release (STRL) で書き出され load acquire　(LDRA) で読みだされる 
flag は git の header に相当し、それ以外で store / load されるものはデータ（ファイル）に相当する。

- ファイルを編集（変更）した結果をすべて repository に書き込んだ上で header を書き込む（更新する）操作が git push 
- header を読み取り、ファイルの変更を repository から読み出すのが git pull 
- git pull した情報は（最新ではないかもしれないが）　header に関して consistent である。

## References

[RISC-V Weak Memory Ordering (“RVWMO”) by Dan Lustig](https://riscv.org/wp-content/uploads/2018/05/14.25-15.00-RISCVMemoryModelTutorial.pdf)


[C/C++11 mappings to processors](https://www.cl.cam.ac.uk/~pes20/cpp/cpp0xmappings.html)

1. x86 (including x86-64)
 * Load Relaxed: MOV (from memory) 
 * Load Acquire: MOV (from memory) 
 * Store Relaxed: MOV (into memory) 
 * Store Release: MOV (into memory)
 
2. AArch64
 * Load Relaxed: LDR 
 * Load Acquire: LDAR 
 * Store Relaxed: STR 
 * Store Release: STLR

[Memory Models for C/C++ Programmers Manuel P¨oter Jesper Larsson Tr¨af](https://arxiv.org/pdf/1803.04432.pdf) 


[Acquire and Release Semantics](https://preshing.com/20120913/acquire-and-release-semantics)

## memo
cross compiler `$ arm-linux-gnueabihf-gcc -o hello_arm hello.cpp`

# おまけ（１）　Read-modify-Write 命令のパフォーマンスについて

apple silicon M1 は  lock-free atomic read-modify-write  命令でも memory order の指定が出来る。
例えば reference count では、increment には relaxed が使え、並列度が上がる可能性がある。一方 decrement では release が必要。誤削除を防ぐため。

1) ARMv8.3 (ARM64e) では、 swp/cas/ldadd 命令などがサポートされている。

[RUST/ARMv8.3+ aarch64-apple-darwin](https://godbolt.org/z/7bz8ov)

2) apple 以外の ARMv8.2 以下では [Load-link/store-conditional](https://en.wikipedia.org/wiki/Load-link/store-conditional)  のみのサポートである。

[RUST/ARMv8 aarch64-unknown-linux-gnu](https://godbolt.org/z/eWE3rG)

3) x86_64 では memory order は sequential consistent に固定される

[RUST/x86 x86_64-unknown-linux-gnu](https://godbolt.org/z/x36fqP)

## Read-modify-Write 命令での memory order について

[aarch64-apple-darwin](https://godbolt.org/z/P9Kbc7)

[aarch64-apple-ios](https://godbolt.org/z/bqKz9M)

[x86_64-unknown-linux-gnu](https://godbolt.org/z/sjTb8W)

# おまけ（２）　store / load  命令の out of order 実行について

store / load  については、 x86 アーキテクチャでも、 ARMv8.3 でも out of order 実行が起こり得ます。

[Memory Reordering Caught in the Act](https://preshing.com/20120515/memory-reordering-caught-in-the-act/)

ここで紹介されている C++ のプログラムを RUST で[書き直し](https://github.com/i-ogata-aist-go-jp/Acquire-Release/tree/main/RUST/ordering/src/main.rs) ました。
x86 でも store / load の reordering が起きることを実際に試すことができます。

`~/Acquire-Release/RUST/ordering$ cargo run --release`

##  store/load の場合は、 mov(into memory) / mov(from memory)  と  str / ldr  は 1:1 に対応します。

[x86](https://godbolt.org/z/GWbqx5)

[ARMv8.3](https://godbolt.org/z/hY7vnM)








