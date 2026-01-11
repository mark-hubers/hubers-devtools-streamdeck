# Stream Deck Configuration

Stream Deck and BetterTouchTool configuration for macOS productivity.

## Features

- Stream Deck button profiles for dev workflows
- BetterTouchTool integration for advanced triggers
- Shell commands and scripts for automation
- Plugin for hubers-devtools-system

## Quick Start

```bash
# Requires hubers-devtools-system to be set up first
cd ~/my-tools/hubers-devtools-system && ./setup.sh

# Or run standalone:
cd ~/my-tools/hubers-devtools-streamdeck
./setup.sh
```

## Requirements

- macOS
- [Stream Deck](https://www.elgato.com/stream-deck) hardware + app
- [BetterTouchTool](https://folivora.ai) (optional but recommended)
- hubers-devtools-system (for plugin integration)

## Structure

```
hubers-devtools-streamdeck/
├── setup.sh              ← Run this!
├── .devtools-plugin      ← Plugin marker
├── configs/              ← Configuration files
├── profiles/             ← Stream Deck profiles
├── scripts/              ← Automation scripts
└── extensions/           ← Shell extensions
```

## Related

- [hubers-devtools-system](https://github.com/mark-hubers/hubers-devtools-system) - Parent dev environment
