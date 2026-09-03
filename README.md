# AI Pharaoh Homebrew tap

Official Homebrew tap for
[AI Pharaoh](https://github.com/mikrus-pl/ai-pharaoh-releases), a native macOS
activity dashboard for parallel Codex and Claude Code sessions.

## Installation

The command below becomes available when the first signed and notarized release
is published:

```sh
brew install --cask mikrus-pl/tap/ai-pharaoh
```

Release automation updates `Casks/ai-pharaoh.rb` only after the application
passes its test suite, Apple notarization, Gatekeeper verification and a clean
Homebrew installation test.
