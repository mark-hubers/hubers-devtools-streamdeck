# Work Tunnel Buttons

Buttons for hubers-devtools-work-tunnel commands.

**Source:** `~/my-tools/hubers-devtools-work-tunnel`
**Docs:** See `DAILY_WORKFLOW.md` in that repo

---

## Folder: WORK

Main folder for all work tunnel commands.

### Stream Deck Setup
1. Add **Create Folder** to main profile
2. Name: "WORK"
3. Add buttons below inside this folder

---

## Button: Connect to Work

**ID:** work-connect
**Type:** command
**Priority:** ⭐ Essential

### Label
```
Connect
Work
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && connect-to-work"`

### Command
```bash
connect-to-work
```

### What It Does
- Checks/updates work Mac IP
- Starts SSH master connection
- Starts SOCKS proxy on port 9080
- Optionally opens mount menu

### Related
- work-status, work-stop

---

## Button: Work Status

**ID:** work-status
**Type:** command
**Priority:** ⭐ Essential

### Label
```
Work
Status
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-status"`

### Command
```bash
work-status
```

### What It Does
Shows if SSH master connection is running.

---

## Button: Work Stop

**ID:** work-stop
**Type:** command

### Label
```
Work
Stop
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-stop"`

### Command
```bash
work-stop
```

### What It Does
Disconnects SSH master connection.

---

## Button: Mount Menu

**ID:** work-mount
**Type:** command
**Priority:** ⭐ Essential

### Label
```
Mount
Folders
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-mount"`

### Command
```bash
work-mount
```

### What It Does
Opens interactive menu to mount work Mac folders (home, git, bin).

---

## Button: Show Mounts

**ID:** work-mounts
**Type:** command

### Label
```
Show
Mounts
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-mounts"`

### Command
```bash
work-mounts
```

### What It Does
Shows which work Mac folders are currently mounted.

---

## Button: Unmount All

**ID:** work-unmount
**Type:** command

### Label
```
Unmount
All
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-unmount"`

### Command
```bash
work-unmount
```

### What It Does
Unmounts all work Mac folders.

---

## Button: SSH to Work

**ID:** work-ssh
**Type:** command

### Label
```
SSH
Work
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-ssh"`

### Command
```bash
work-ssh
# or just: work
```

### What It Does
Opens SSH session to work Mac.

---

## Button: Proxy Test

**ID:** work-proxy-test
**Type:** command

### Label
```
Proxy
Test
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-proxy-test"`

### Command
```bash
work-proxy-test
```

### What It Does
Tests SOCKS proxy is working, shows work Mac's public IP.

---

## Button: Quick Ping Servers

**ID:** work-wping
**Type:** command

### Label
```
Ping
Servers
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && wping jira.aspect.com confluence.alvaria.com"`

### Command
```bash
wping jira.aspect.com confluence.alvaria.com
```

### What It Does
Quick check if work servers are reachable through proxy.

---

## Button: Work Help

**ID:** work-help
**Type:** command

### Label
```
Work
Help
```

### Stream Deck Setup
1. Add **System > Open**
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && work-help"`

### Command
```bash
work-help
```

### What It Does
Shows all work-* commands available.

---

## Multi-Action: Full Work Setup

**ID:** work-full-setup
**Type:** multi-action
**Priority:** ⭐ Power user

### Label
```
Full
Setup
```

### Stream Deck Setup
1. Add **Multi Action**
2. Add actions:
   - System > Open: `/bin/zsh -ic "source ~/.zshrc && connect-to-work"`
   - Delay: 3000ms
   - System > Open: `/bin/zsh -ic "source ~/.zshrc && work-mount-home"`

### What It Does
Connects to work AND mounts home folder automatically.

---

## Summary Table

| Button | Command | Essential? |
|--------|---------|------------|
| Connect Work | `connect-to-work` | ⭐ Yes |
| Work Status | `work-status` | ⭐ Yes |
| Work Stop | `work-stop` | |
| Mount Folders | `work-mount` | ⭐ Yes |
| Show Mounts | `work-mounts` | |
| Unmount All | `work-unmount` | |
| SSH Work | `work-ssh` | |
| Proxy Test | `work-proxy-test` | |
| Ping Servers | `wping ...` | |
| Work Help | `work-help` | |
| Full Setup | multi-action | ⭐ Power |
