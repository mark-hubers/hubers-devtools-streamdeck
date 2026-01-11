# Project Context for Claude

## What This Project Is

hubers-devtools-streamdeck is a **plugin** for hubers-devtools-system that manages Stream Deck and BetterTouchTool configuration.

- Main entry: `./setup.sh`
- Part of the devtools plugin ecosystem
- Auto-discovered by parent's setup.sh via `.devtools-plugin` marker

## Parent Project

**hubers-devtools-system** (`~/my-tools/hubers-devtools-system/`)
- The MASTER dev environment setup
- Discovers plugins in `~/my-tools/` with `.devtools-plugin` marker
- Shared utilities in `lib/setup-utils.sh`
- Shell extensions load from `~/.zsh/extensions.d/`

## Sibling Plugins

- `hubers-devtools-work-tunnel` - SSH tunnel to work Mac

## Plugin Requirements

To be a valid plugin for hubers-devtools-system:
1. Must have `.devtools-plugin` marker file with NAME, DESCRIPTION, VERSION
2. Must have `setup.sh` entry point
3. Should be idempotent (safe to re-run)
4. Should check for devtools-system first
5. Shell extensions go in `extensions/*.zsh` → installed to `~/.zsh/extensions.d/`

## Documentation Sync

**IMPORTANT:** When making significant changes or completing features:
1. Update this project's README.md
2. Sync relevant docs to `~/hubers-docs/` (private documentation repo)
3. Keep `~/hubers-docs/projects/` index updated

### hubers-docs Structure
```
~/hubers-docs/
├── projects/           ← Central index of all projects
│   └── index.md        ← Quick reference to all repos
├── devtools/           ← Devtools-specific docs
├── git/                ← Git configuration docs
└── ...
```

## Key Files

| File | Purpose |
|------|---------|
| `.devtools-plugin` | Plugin marker (NAME, DESCRIPTION, VERSION) |
| `setup.sh` | Main entry point, sources parent's setup-utils.sh |
| `configs/` | Configuration files |
| `profiles/` | Stream Deck profile exports |
| `scripts/` | Automation scripts |
| `extensions/` | Shell extensions (*.zsh) |

## Stream Deck + BetterTouchTool Integration

This project manages:
- Stream Deck button configurations and profiles
- BetterTouchTool triggers and actions
- Shell scripts triggered by buttons
- Keyboard shortcuts and automation

## Development Notes

- Keep configs generic where possible (use $HOME, not hardcoded paths)
- Sensitive data (API keys, etc.) goes in `*.local.*` files (gitignored)
- Test setup.sh is idempotent before committing
