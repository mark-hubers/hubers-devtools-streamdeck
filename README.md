# Stream Deck + BTT + Keyboard Maestro Configuration

Hardware shortcuts for hubers-devtools. Config-as-documentation approach.

## Philosophy

Instead of clicking around GUIs, we document everything here:
- What each button does
- How to set it up (step-by-step)
- What commands it runs

Sonnet can then help add new buttons by following the patterns.

## Quick Start

1. Read [docs/SETUP-GUIDE.md](docs/SETUP-GUIDE.md) for initial setup
2. Read [docs/HOW-TO-ADD-BUTTON.md](docs/HOW-TO-ADD-BUTTON.md) for patterns
3. Browse [buttons/](buttons/) for available buttons to add

## Structure

```
hubers-devtools-streamdeck/
├── docs/
│   ├── SETUP-GUIDE.md           ← Start here!
│   ├── HOW-TO-ADD-BUTTON.md     ← Patterns for adding buttons
│   ├── BTT-SETUP.md             ← BetterTouchTool configuration
│   └── KM-SETUP.md              ← Keyboard Maestro (TODO)
├── buttons/
│   ├── work-tunnel.md           ← Work tunnel commands
│   ├── network.md               ← Network & cert tools
│   ├── window-management.md     ← BTT window controls
│   ├── kubernetes.md            ← K8s commands (TODO)
│   └── aws.md                   ← AWS commands (TODO)
├── scripts/
│   └── (automation scripts)
├── reference/
│   └── work-mac-profiles/       ← Old config for reference
├── exports/
│   ├── btt-preset.json          ← Exported BTT config
│   └── km-macros.xml            ← Exported KM macros
└── setup.sh                     ← Plugin installer
```

## Integration

This repo integrates with:

| Repo | What It Provides |
|------|------------------|
| [hubers-devtools-system](../hubers-devtools-system) | Core commands: cert-*, dns, ports, nethelp |
| [hubers-devtools-work-tunnel](../hubers-devtools-work-tunnel) | Work commands: connect-to-work, work-*, wcurl |

Stream Deck buttons call these commands.

## Tools Used

| Tool | Purpose |
|------|---------|
| **Stream Deck** | Physical button hardware |
| **BetterTouchTool** | Window management, advanced automation |
| **Keyboard Maestro** | Complex macros (optional) |

## Button Categories

| Folder | Description |
|--------|-------------|
| WORK | Work tunnel: connect, mount, status |
| NET | Network: ports, dns, myip |
| CERTS | SSL/TLS: cert-test, cert-chain |
| K8s | Kubernetes: logs, pods, secrets |
| AWS | AWS: whoami, eks, ecr |
| WIN | Windows: pin on top, snap, move |

## Adding New Buttons

See [HOW-TO-ADD-BUTTON.md](docs/HOW-TO-ADD-BUTTON.md)

Quick version:
1. Find the right category in `buttons/`
2. Copy a similar button's template
3. Fill in the details
4. Follow the Stream Deck Setup steps
5. Test it!

## Hardware

- **Stream Deck XL** (32 buttons, 8x4 grid)
- Layout: Rows by category, folders for depth

## Related

- [hubers-devtools-system](https://github.com/mark-hubers/hubers-devtools-system)
- [hubers-devtools-work-tunnel](https://github.com/mark-hubers/hubers-devtools-work-tunnel)
