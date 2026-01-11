# Window Management Buttons

Buttons for window control using BetterTouchTool.

**Requires:** BetterTouchTool (paid, already installed)
**Setup:** See [BTT-SETUP.md](../docs/BTT-SETUP.md)

---

## Folder: WIN

Window management folder. Or put most-used on main profile.

---

## Button: Pin Window (Stay on Top)

**ID:** win-pin
**Type:** BTT trigger
**Priority:** ⭐⭐ You wanted this!

### Label
```
Pin
Window
```

### BTT Setup (do this first)
1. Open BTT Preferences
2. Go to **Automations, Named & Other Triggers**
3. Click **+** → **Named Trigger**
4. Name: `Pin Window On Top`
5. Add Action: **Window Interaction** → **Toggle 'Always on Top' for Current Window**
6. (Optional) Add Action: **Show HUD Overlay** → "📌 Pinned" for feedback

### Stream Deck Setup

**Option A: Via BTT's Stream Deck integration (recommended)**
1. In BTT, go to **Other Triggers** → **Stream Deck**
2. Click the button position you want
3. Add action: Call Named Trigger → `Pin Window On Top`

**Option B: Via Stream Deck app**
1. Add **Website** action
2. URL: `btt://execute_assigned_actions_for_trigger/?uuid=YOUR-TRIGGER-UUID`
3. Get UUID by right-clicking trigger in BTT

### What It Does
Toggles the frontmost window to stay on top of all other windows.
Press again to unpin.

---

## Button: Center Window

**ID:** win-center
**Type:** BTT trigger

### Label
```
Center
```

### BTT Setup
1. Create Named Trigger: `Center Window`
2. Add Action: **Window Interaction** → **Center Window**

### Stream Deck Setup
1. In BTT Stream Deck, add action calling `Center Window`

---

## Button: Left Half

**ID:** win-left
**Type:** BTT trigger

### Label
```
←
Left
```

### BTT Setup
1. Create Named Trigger: `Window Left Half`
2. Add Action: **Window Interaction** → **Resize Window to Left Half**

---

## Button: Right Half

**ID:** win-right
**Type:** BTT trigger

### Label
```
→
Right
```

### BTT Setup
1. Create Named Trigger: `Window Right Half`
2. Add Action: **Window Interaction** → **Resize Window to Right Half**

---

## Button: Maximize

**ID:** win-max
**Type:** BTT trigger

### Label
```
Max
```

### BTT Setup
1. Create Named Trigger: `Maximize Window`
2. Add Action: **Window Interaction** → **Maximize Window**

---

## Button: Next Monitor

**ID:** win-next-monitor
**Type:** BTT trigger

### Label
```
Next
Monitor
```

### BTT Setup
1. Create Named Trigger: `Move to Next Monitor`
2. Add Action: **Window Interaction** → **Move Window to Next Monitor**

### What It Does
Moves current window to the next monitor (cycles through monitors).

---

## Button: Toggle Dark Mode

**ID:** win-dark-mode
**Type:** BTT trigger

### Label
```
Dark
Mode
```

### BTT Setup
1. Create Named Trigger: `Toggle Dark Mode`
2. Add Action: **Controlling Other Applications** → **Toggle System Dark Mode**

---

## Button: Sleep Display

**ID:** win-sleep
**Type:** BTT trigger

### Label
```
Sleep
Display
```

### BTT Setup
1. Create Named Trigger: `Sleep Display`
2. Add Action: **System Actions** → **Start Screensaver / Put Display to Sleep**

---

## Button: Do Not Disturb

**ID:** win-dnd
**Type:** BTT trigger

### Label
```
DND
```

### BTT Setup
1. Create Named Trigger: `Toggle DND`
2. Add Action: **System Actions** → **Toggle Do Not Disturb**

---

## Advanced: Multi-Monitor Layout

**ID:** win-layout-dev
**Type:** BTT multi-action

### Label
```
Dev
Layout
```

### BTT Setup
Create a trigger that sets up your dev layout:
1. Move iTerm to left half of monitor 1
2. Move browser to right half of monitor 1
3. Move Slack to monitor 2

This requires AppleScript to target specific apps.

---

## Summary Table

| Button | BTT Trigger | Priority |
|--------|-------------|----------|
| Pin Window | `Pin Window On Top` | ⭐⭐ Yes! |
| Center | `Center Window` | |
| Left Half | `Window Left Half` | |
| Right Half | `Window Right Half` | |
| Maximize | `Maximize Window` | |
| Next Monitor | `Move to Next Monitor` | ⭐ |
| Dark Mode | `Toggle Dark Mode` | |
| Sleep Display | `Sleep Display` | |
| DND | `Toggle DND` | |

---

## Quick Setup Checklist

1. [ ] Open BTT Preferences
2. [ ] Create Named Trigger: `Pin Window On Top`
3. [ ] Add action: Toggle Always on Top
4. [ ] Test it works (right-click trigger → Execute)
5. [ ] Go to BTT → Other Triggers → Stream Deck
6. [ ] Assign trigger to a button
7. [ ] Test from Stream Deck!
