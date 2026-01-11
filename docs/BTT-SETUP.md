# BetterTouchTool Setup

BTT is our power tool for window management, advanced triggers, and Stream Deck integration.

## Why BTT?

- **Window Management:** Pin windows on top, snap windows, resize
- **Stream Deck Integration:** BTT has native Stream Deck support
- **AppleScript Actions:** Run complex automation
- **Named Triggers:** Create reusable actions Stream Deck can call

---

## Initial BTT Setup

### 1. Enable Stream Deck Integration

1. Open BTT Preferences
2. Go to **Other Triggers** → **Stream Deck**
3. BTT will detect your Stream Deck
4. You can now create BTT actions triggered by Stream Deck buttons

### 2. Create Named Triggers

Named Triggers are reusable actions you can call from Stream Deck or other BTT triggers.

1. Go to **Automations, Named & Other Triggers**
2. Click **+** → **Named Trigger**
3. Name it (e.g., "Pin Window On Top")
4. Add actions to it

---

## Window Management Triggers

### Trigger: Pin Window On Top

Makes the current window stay on top of all other windows.

**BTT Setup:**
1. Create Named Trigger: `Pin Window On Top`
2. Add Action: **Window Interaction** → **Toggle 'Always on Top' for Current Window**

**Stream Deck Setup:**
1. Add **BetterTouchTool** action (from BTT Stream Deck integration)
2. Select trigger: `Pin Window On Top`

---

### Trigger: Unpin All Windows

Removes "always on top" from all windows.

**BTT Setup:**
1. Create Named Trigger: `Unpin All Windows`
2. Add Action: **Run AppleScript**
```applescript
tell application "BetterTouchTool"
    -- There's no direct "unpin all" but we can trigger for each app
end tell
```

*Note: This is tricky - BTT doesn't have a native "unpin all" action. Alternative approach below.*

---

### Alternative: Toggle Pin with Visual Feedback

Better approach - one button that toggles and shows state.

**BTT Setup:**
1. Create Named Trigger: `Toggle Pin Window`
2. Add Action: **Toggle 'Always on Top' for Current Window**
3. Add Action: **Show HUD Notification** → "Window Pinned" or "Window Unpinned"

**Stream Deck Setup:**
1. Use BTT's Stream Deck integration
2. The button can show different icons based on state

---

## Useful BTT Actions for Stream Deck

### Window Actions

| Action | BTT Name |
|--------|----------|
| Pin on top | Toggle 'Always on Top' for Current Window |
| Center window | Center Window on Screen |
| Maximize | Maximize Window |
| Left half | Move/Resize: Left Half |
| Right half | Move/Resize: Right Half |
| Move to next monitor | Move Window to Next Monitor |

### App Actions

| Action | BTT Name |
|--------|----------|
| Launch app | Launch Application |
| Activate app | Activate Application |
| Hide app | Hide Application |
| Quit app | Quit Application |

### System Actions

| Action | BTT Name |
|--------|----------|
| Sleep display | Sleep Display |
| Lock screen | Lock Screen |
| Toggle Dark Mode | Toggle Dark Mode |
| Do Not Disturb | Toggle Do Not Disturb |

---

## Stream Deck + BTT Integration Options

### Option 1: BTT's Native Stream Deck Support

BTT can directly control Stream Deck buttons:
1. In BTT, go to **Other Triggers** → **Stream Deck**
2. Click on a button position
3. Add BTT actions directly

**Pros:** Full BTT power, state management, icons
**Cons:** Configured in BTT not Stream Deck app

### Option 2: Stream Deck Calls BTT Named Triggers

Use Stream Deck app, call BTT via URL scheme:

1. In Stream Deck, add **Website** action
2. URL: `btt://execute_assigned_actions_for_trigger/?uuid=YOUR-TRIGGER-UUID`

To get trigger UUID:
1. In BTT, right-click on Named Trigger
2. Copy UUID

### Option 3: Stream Deck Runs AppleScript that Calls BTT

1. Create AppleScript in `scripts/` folder
2. Stream Deck runs the script

```applescript
tell application "BetterTouchTool"
    execute_assigned_actions_for_trigger "Pin Window On Top"
end tell
```

---

## Export BTT Config to Git

To version control your BTT setup:

1. BTT → Preferences → Manage Presets
2. Export preset to: `~/my-tools/hubers-devtools-streamdeck/exports/btt-preset.json`
3. Commit to git

To restore:
1. BTT → Preferences → Manage Presets
2. Import preset from the JSON file

---

## Recommended BTT Named Triggers

Create these triggers for Stream Deck integration:

| Trigger Name | Action |
|--------------|--------|
| `Pin Window On Top` | Toggle Always on Top |
| `Center Window` | Center on Screen |
| `Left Half` | Move to Left Half |
| `Right Half` | Move to Right Half |
| `Next Monitor` | Move to Next Monitor |
| `Toggle Dark Mode` | System Dark Mode Toggle |
| `Sleep Display` | Put Display to Sleep |

---

## Troubleshooting

**BTT not seeing Stream Deck:**
- Make sure Stream Deck app is running
- Restart BTT
- Check BTT has accessibility permissions

**Named Trigger not working:**
- Verify UUID is correct
- Test trigger manually in BTT first
- Check BTT is running

**Window pin not working:**
- Some apps don't support "Always on Top"
- Check accessibility permissions for BTT
