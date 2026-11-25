# SHA-256 Proof of Work solver

問題設定と逐次版の仕組みは [problem.md](problem.md)、使い方は `./pow --help` を参照。

## 性能の測り方

速度は Miyabi-G の Grace で、`make` の既定の設定でビルドしたものどうしで比べる。
早期終了による実行時間の違いを避けるため、`solve` ではなく `bench` を使う。

```bash
make
./pow --self-test
./pow bench ctf-demo: 20 1000000000
```

Grace 以外の計算機では `make ARCHFLAGS=-march=native` でビルドする。
