# homebrew-tap

A [Homebrew](https://brew.sh) tap for my projects.

## Eyeline

A free, open-source teleprompter that docks under the MacBook notch, so you can
read your script while holding eye contact with the camera. 100% local — no
network, no telemetry, no accounts. → https://github.com/Shauryagulati/eyeline

```sh
brew install --cask shauryagulati/tap/eyeline
```

That's it — the app opens normally. Eyeline isn't notarized by Apple yet (it's a
free project with no paid Apple Developer account), so macOS would otherwise
quarantine it and Gatekeeper would block the first launch. The cask clears that
quarantine flag for you on install, so there's no extra flag or step. (The one
line that does it is right there in [`Casks/eyeline.rb`](Casks/eyeline.rb).)

To update or remove it later:

```sh
brew upgrade --cask eyeline
brew uninstall --cask eyeline
```
