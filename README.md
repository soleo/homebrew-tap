# soleo/tap

Homebrew formulae and casks for soleo's tools.

## Bogyman

[Bogyman](https://github.com/soleo/bogyman-cli) tells you which of your agent sessions needs you, on what, and for how long. macOS and Linux.

```sh
brew install soleo/tap/bogyman
```

The formula is updated by bogyman-cli's release workflow for each stable release.

## Tinycap

[Tinycap](https://github.com/soleo/tinycap) is a tiny screen recorder and screenshot tool for macOS.

```sh
brew install --cask soleo/tap/tinycap
```

Tinycap updates itself, so `brew upgrade` skips it unless you pass `--greedy`. `brew uninstall --zap tinycap` also removes its settings. Your recordings in ~/Movies/Tinycap are kept.
