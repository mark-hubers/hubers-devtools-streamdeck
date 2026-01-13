# Project Status: hubers-devtools-streamdeck

## Last Session
**Date:** 2026-01-11
**What we did:**
- Saved old Stream Deck config from work Mac as reference
- Created full documentation structure (docs/, buttons/)
- Set up BTT "Pin Window On Top" trigger - IT WORKS!

## Next Up
- [ ] Add Pin Window button to Stream Deck (BTT → Other Triggers → Stream Deck)
- [ ] Add work-tunnel buttons (connect-to-work, work-mount, work-status)
- [ ] Add cert-test and network buttons
- [ ] Create AWS buttons (whoami, eks, ecr)
- [ ] Create Kubernetes buttons

## Quick Resume
```bash
# To continue where we left off:
claude --continue

# Or just say:
"Let's add the pin window button to Stream Deck"
"Add more buttons for work-tunnel commands"
```

## Key Files
- `docs/SETUP-GUIDE.md` - How to set up buttons
- `docs/BTT-SETUP.md` - BetterTouchTool integration
- `buttons/work-tunnel.md` - Work tunnel button definitions
- `buttons/window-management.md` - BTT window buttons

## Tips
- BTT "Pin Window On Top" trigger already created and tested
- Use BTT's Stream Deck integration (Other Triggers → Stream Deck)
- Follow patterns in `docs/HOW-TO-ADD-BUTTON.md`
