# How to Add a Stream Deck Button

Patterns and templates for adding new buttons. Follow these for consistency.

---

## Button Types

### Type 1: Shell Command (Most Common)

Runs a command from hubers-devtools.

**Stream Deck Setup:**
1. Drag **System > Open** to button
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && COMMAND"`

**Template:**
```
App:       /bin/zsh
Arguments: -ic "source ~/.zshrc && connect-to-work"
Title:     Connect
Icon:      (optional custom icon)
```

---

### Type 2: Text Paste (Terminal Commands)

Pastes text into focused terminal. Good for commands with placeholders.

**Stream Deck Setup:**
1. Drag **System > Text** to button
2. Enter the command text
3. Optionally check "Press Enter after"

**Template:**
```
Text:      kubectl logs -f -n NAMESPACE POD_NAME
Title:     K8s Logs
Note:      User edits NAMESPACE and POD_NAME before hitting enter
```

---

### Type 3: Folder (Sub-menu)

Opens a group of related buttons, auto-returns after selection.

**Stream Deck Setup:**
1. Drag **Create Folder** to button
2. Name the folder
3. Add buttons inside the folder
4. Each button in folder returns to parent after action

**Template:**
```
Folder:    WORK
Contains:  connect-to-work, work-status, work-mount, work-stop
Icon:      Folder icon or custom
```

---

### Type 4: Hotkey

Triggers a keyboard shortcut.

**Stream Deck Setup:**
1. Drag **System > Hotkey** to button
2. Record the key combination

**Template:**
```
Hotkey:    Cmd+Shift+M
Title:     iTerm Mark
App:       iTerm2 (if app-specific)
```

---

### Type 5: Multi-Action

Runs multiple actions in sequence.

**Stream Deck Setup:**
1. Drag **Multi Action** to button
2. Add actions in order
3. Add delays if needed between actions

**Template:**
```
Actions:
  1. Open: /bin/zsh -ic "connect-to-work"
  2. Delay: 3 seconds
  3. Open: /bin/zsh -ic "work-mount"
Title:     Full Setup
```

---

### Type 6: AppleScript/BTT (Advanced)

For window management, app control, etc.

**Stream Deck Setup:**
1. Use BTT integration OR
2. Run AppleScript via System > Open

**Template:**
```
App:       /usr/bin/osascript
Arguments: /path/to/script.scpt
Title:     Pin Window
```

---

## Button Documentation Template

When adding a new button, document it in the appropriate file under `buttons/`:

```markdown
## Button: [Name]

**ID:** unique-id
**Category:** work | k8s | network | aws | git | window
**Type:** command | text | folder | hotkey | multi-action | script

### Label
Connect
Work

### Icon
🔗 (or path to custom icon)

### Stream Deck Setup
1. Add **System > Open** action
2. App: `/bin/zsh`
3. Arguments: `-ic "source ~/.zshrc && connect-to-work"`

### Command/Action
connect-to-work

### What It Does
Starts SSH tunnel and SOCKS proxy to work Mac.
See: hubers-devtools-work-tunnel

### Related Commands
- work-status
- work-stop
- work-mount
```

---

## Naming Conventions

| Category | Prefix | Example |
|----------|--------|---------|
| Work Tunnel | work- | work-connect, work-status |
| Kubernetes | k8s- | k8s-logs, k8s-pods |
| Network | net- | net-ports, net-dns |
| Certificates | cert- | cert-test, cert-chain |
| AWS | aws- | aws-whoami, aws-eks |
| Git | git- | git-status, git-pull |
| Window | win- | win-pin, win-unpin |

---

## Tips

1. **Test in terminal first** - Make sure the command works before adding to Stream Deck
2. **Use folders** - Group related commands, keeps main screen clean
3. **Add icons** - Visual recognition is faster than reading text
4. **Multi-line labels** - Use `\n` in title for line breaks
5. **Document everything** - Future you will thank present you
