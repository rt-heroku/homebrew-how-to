# homebrew-how-to

Homebrew tap for **how-to** — a local AI shell command assistant powered by Apple Foundation Models.

## Install

```bash
brew tap rt-heroku/how-to
brew install --cask how-to
```

## Usage

Once installed, the FoundationMenuBar app runs in your menu bar and serves the on-device AI model. Use the `how` CLI from any terminal:

```bash
how find files containing TODO
how show disk usage by folder
how which process is on port 3000
```

It suggests 1-3 command options and lets you pick one to run — all powered by Apple's on-device 3B model. No data leaves your Mac.

## Requirements

- macOS 26 (Tahoe) or later
- Apple Silicon (M1+)

## Uninstall

```bash
brew uninstall --cask how-to
```
