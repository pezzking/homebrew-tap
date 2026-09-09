# Homebrew tap for RunwayLeft

[RunwayLeft](https://github.com/pezzking/runwayleft) is a macOS menu bar app that shows how much runway is left on your Claude Code, OpenAI Codex, and LiteLLM subscriptions.

## Install

```bash
brew install --cask pezzking/tap/runwayleft
```

The app is ad-hoc signed, not notarized, so macOS blocks the first launch of a downloaded copy. Either open System Settings › Privacy & Security and choose Open Anyway, or clear the quarantine flag once before launching:

```bash
xattr -dr com.apple.quarantine /Applications/RunwayLeft.app
```

## Upgrade

```bash
brew upgrade --cask runwayleft
```

Then clear the quarantine flag again as above. Settings carry over.

## Uninstall

```bash
brew uninstall --cask runwayleft          # removes the app, keeps your settings
brew uninstall --cask --zap runwayleft    # also removes settings and the LiteLLM key file
```
