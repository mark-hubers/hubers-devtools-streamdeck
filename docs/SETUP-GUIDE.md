# Stream Deck Setup Guide

One-time setup to integrate Stream Deck with hubers-devtools.

## Prerequisites

- Stream Deck hardware + Elgato app installed
- hubers-devtools-system installed (`~/my-tools/hubers-devtools-system`)
- hubers-devtools-work-tunnel installed (`~/my-tools/hubers-devtools-work-tunnel`)
- BetterTouchTool (optional, for window management)
- Keyboard Maestro (optional, for complex macros)

## How Stream Deck Runs Shell Commands

Stream Deck can't run zsh commands directly with your aliases loaded. We need a wrapper.

### Option 1: System > Open (Recommended)

For each button that runs a shell command:

1. Add action: **System > Open**
2. App/File: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && YOUR_COMMAND_HERE"`

The `-i` makes it interactive (loads your config), `-c` runs the command.

**Example:**
```
App: /bin/zsh
Arguments: -ic "source ~/.zshrc && connect-to-work"
```

### Option 2: Script Files

Create a script in `~/my-tools/hubers-devtools-streamdeck/scripts/`:

```bash
#!/bin/zsh
source ~/.zshrc
connect-to-work
```

Then point Stream Deck to run that script.

### Option 3: Text Paste (for terminal commands)

If iTerm/terminal is focused, use **System > Text** to paste the command.
This just types the text - you still hit enter or add `\n`.

---

## Initial Stream Deck Configuration

### 1. Create Main Profile

1. Open Stream Deck app
2. Create new profile: **"Devtools Main"**
3. Set as default profile (or app-specific for iTerm)

### 2. Profile Structure

We'll use **Folders** for organization:

| Folder | Contains |
|--------|----------|
| WORK | Work tunnel commands (connect, mount, status) |
| K8s | Kubernetes commands |
| NET | Network tools (ports, dns, certs) |
| AWS | AWS commands (whoami, eks, ecr) |
| GIT | Git shortcuts |
| WIN | Window management (stay-on-top) |

### 3. Folder Behavior

Folders can auto-return to parent after action:
- In Stream Deck app, when creating a folder
- The child profile buttons return automatically after press
- Or timeout after X seconds

---

## Integration Points

### hubers-devtools-system Commands

These work directly (no work tunnel needed):

| Command | What it does |
|---------|--------------|
| `nethelp` | Show all network commands |
| `cert <host>` | Certificate summary |
| `cert-test <host>` | Full SSL test |
| `cert-help` | Certificate command help |
| `dns <domain>` | DNS lookup |
| `ports` | Show listening ports |
| `port <n>` | Check specific port |
| `myip` | Show public IP |
| `pfx-extract <file>` | Extract from PFX |

### hubers-devtools-work-tunnel Commands

These require the tunnel to be running:

| Command | What it does |
|---------|--------------|
| `connect-to-work` | Start tunnel + proxy |
| `work-status` | Check connection |
| `work-stop` | Disconnect |
| `work-mount` | Mount folders menu |
| `work-mounts` | Show mounted folders |
| `work-ssh` | SSH to work Mac |
| `wcurl <url>` | Curl through proxy |
| `wping <hosts>` | Check servers through proxy |
| `wcert <host>` | Cert check through proxy |
| `wcert-test <host>` | Full SSL test through proxy |

---

## Next Steps

1. Read [HOW-TO-ADD-BUTTON.md](HOW-TO-ADD-BUTTON.md) for button patterns
2. See [buttons/](../buttons/) for all available buttons
3. See [BTT-SETUP.md](BTT-SETUP.md) for window management
