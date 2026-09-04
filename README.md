# AI Pharaoh Homebrew tap

Official Homebrew tap for
[AI Pharaoh](https://github.com/mikrus-pl/ai-pharaoh-releases), a native macOS
activity dashboard for parallel Codex and Claude Code sessions.

## Installation

Homebrew 6 requires an external tap to be added explicitly:

```sh
brew tap mikrus-pl/tap
brew install --cask mikrus-pl/tap/ai-pharaoh
```

The first command adds the public AI Pharaoh catalog. The second trusts and
installs only the fully qualified AI Pharaoh cask.

Release automation updates `Casks/ai-pharaoh.rb` only after the application
passes its test suite, Apple notarization, Gatekeeper verification and a clean
Homebrew installation test.
