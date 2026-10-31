# KZM mod template (Lua + Rust), MIT

Single repo: **`lua/`** gameplay, **`src/`** Rust `cdylib`, **`./build.sh`** → **`dist/<id>.dll`**.

```bash
kzm init my-mod
./build.sh
kzm build
```

C variant: **`kzm init --clang`** ([mod-clang](../mod-clang/)).
