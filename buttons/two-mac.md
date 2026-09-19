# Two-Mac Buttons

Buttons for the Studio / MacBook Pro mesh: remote Claude Code, health, routing.

**Source:** `~/my-tools/hubers-devtools-mesh` and `~/my-tools/hubers-devtools-remote`
**Docs:** `~/hubers-docs/TWO-MAC-SETUP.md`, `hubers-devtools-system/docs/TWO-MAC-TOOLING.md`

Every button here opens a terminal. Use **System > Open** with `/bin/zsh` and the
`-ic "source ~/.zshrc && ..."` arguments, the same pattern as `work-tunnel.md`.
Buttons that attach a session (`rclaude`, `tstudio`) must open in iTerm2, not run
headless, because they need a tty. Use **Open > iTerm2** with the command as the
argument, or an iTerm2 profile whose command is the line shown.

---

## Folder: 2MAC

1. Add **Create Folder** to main profile
2. Name: "2MAC"
3. Add buttons below inside this folder

---

## Button: Claude on Studio

**ID:** rclaude-studio
**Type:** command (needs a tty)
**Priority:** ⭐ Essential

### Label
```
Claude
Studio
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/Applications/iTerm.app`
3. Or: iTerm2 profile "Claude Studio" with command `zsh -ic "rclaude studio"`

### Command
```bash
rclaude studio
```

### What It Does
mosh to the Studio and attach (or create) the tmux session named `claude`
running Claude Code. Press it again after a dropped connection and you land in
the same session. `Ctrl-b d` detaches and leaves it running.

---

## Button: Claude on MacBook

**ID:** rclaude-mbp
**Type:** command (needs a tty)

### Label
```
Claude
MacBook
```

### Command
```bash
rclaude mbp
```

### What It Does
Same as above, in the other direction. Only useful from the Studio.

---

## Button: Mesh Status

**ID:** 2mac
**Type:** command
**Priority:** ⭐ Essential

### Label
```
Mesh
Status
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && 2mac; read -k 1"`

### Command
```bash
2mac
```

### What It Does
Tailscale state, both nodes online/ping/ssh, Ollama model count on the Studio,
exit-node status. Read-only.

---

## Button: Route Via Home

**ID:** viahome-on
**Type:** command

### Label
```
Via
Home
```

### Command
```bash
viahome on
```

### What It Does
Sends all traffic through the Studio as a Tailscale exit node. For hotel and
coffee-shop wifi. `viahome off` is the pair button. Needs the exit node approved
in the Tailscale admin console first (pending as of 2026-09-19).

---

## Button: Sessions on Studio

**ID:** tls-studio
**Type:** command

### Label
```
Sessions
Studio
```

### Command
```bash
tls marks-mac-studio
```

### What It Does
Lists tmux sessions on the Studio so you can `tstudio <name>` into one with
native iTerm2 tabs. Sessions started outside tmux do not show here; reach those
from claude.ai/code or the phone app (Remote Control is on at startup).

---

## Summary Table

| Button | Command | Essential? | Needs tty |
|--------|---------|------------|-----------|
| Claude Studio | `rclaude studio` | ⭐ Yes | yes |
| Claude MacBook | `rclaude mbp` | | yes |
| Mesh Status | `2mac` | ⭐ Yes | no |
| Via Home | `viahome on` / `viahome off` | | no |
| Sessions Studio | `tls marks-mac-studio` | | no |
