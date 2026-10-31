# KZM mod template (Lua + Rust), MIT

Single repo: **`lua/`** gameplay, **`src/`** Rust `cdylib`, **`i18n/`** UI + dialogue catalogs, **`./build.sh`** → **`dist/<id>.dll`**.

```bash
kzm init my-mod
./build.sh
kzm build
```

- **`ctx.t("key")`** — UI strings from `i18n/<locale>.json`
- **`Dialogue.for_mod(ctx)`** — `.kzd` overrides via `get_line_text` / `get_choice_text` hooks

See [i18n spec](../../docs/spec/i18n.md). C variant: **`kzm init --clang`** ([mod-clang](../mod-clang/)).

**Katana ZERO** assets remain **Askiisoft's property** — [community & game IP](docs/COMMUNITY_AND_GAME_IP.md). List bundled third-party files in [THIRD_PARTY.md](THIRD_PARTY.md).

