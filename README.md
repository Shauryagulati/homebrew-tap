# homebrew-tap

A [Homebrew](https://brew.sh) tap for my projects.

## Eyeline

A free, open-source teleprompter that docks under the MacBook notch, so you can
read your script while holding eye contact with the camera. 100% local — no
network, no telemetry, no accounts. → https://github.com/Shauryagulati/eyeline

```sh
brew install --cask --no-quarantine shauryagulati/tap/eyeline
```

`--no-quarantine` is needed because Eyeline isn't notarized by Apple yet — it
lets the app open without the Gatekeeper warning. (It's a free project with no
paid Apple Developer account.) Without that flag the app still installs, but
macOS blocks the first launch and you'd have to allow it under **System Settings
→ Privacy & Security → Open Anyway**.

To update or remove it later:

```sh
brew upgrade --cask eyeline
brew uninstall --cask eyeline
```
