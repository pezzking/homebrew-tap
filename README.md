# Homebrew tap for RunwayLeft

[RunwayLeft](https://github.com/pezzking/runwayleft) is a macOS menu bar app that shows how much runway is left on your Claude Code, OpenAI Codex, and LiteLLM subscriptions.

## Install

```bash
brew install --cask pezzking/tap/runwayleft
```

The app is ad-hoc signed, not notarized, so macOS blocks the first launch of a downloaded copy. Open System Settings › Privacy & Security and choose Open Anyway, or skip the prompt by installing without the quarantine flag:

```bash
brew install --cask --no-quarantine pezzking/tap/runwayleft
```

## Upgrade

```bash
brew upgrade --cask runwayleft
```

## Uninstall

```bash
brew uninstall --cask runwayleft          # removes the app, keeps your settings
brew uninstall --cask --zap runwayleft    # also removes settings and the LiteLLM key file
```
