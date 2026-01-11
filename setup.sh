#!/bin/bash
###############################################################################
# Stream Deck Setup
# Part of hubers-devtools-system plugin ecosystem
###############################################################################

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEVTOOLS_DIR="$HOME/my-tools/hubers-devtools-system"

# Source shared utilities if available
if [[ -f "$DEVTOOLS_DIR/lib/setup-utils.sh" ]]; then
    source "$DEVTOOLS_DIR/lib/setup-utils.sh"
else
    # Fallback colors
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
    NC='\033[0m'
    success() { echo -e "${GREEN}✓${NC} $1"; }
    fail() { echo -e "${RED}✗${NC} $1"; }
    warn() { echo -e "${YELLOW}!${NC} $1"; }
    info() { echo -e "${BLUE}→${NC} $1"; }
    step() { echo -e "\n${BLUE}[$1]${NC} $2"; }
fi

echo "=============================================="
echo "  Stream Deck Setup"
echo "  Plugin for hubers-devtools-system"
echo "=============================================="

###############################################################################
# Step 1: Check Prerequisites
###############################################################################
step "1" "Checking prerequisites"

# Check if devtools-system is installed
if [[ ! -d "$DEVTOOLS_DIR" ]]; then
    fail "hubers-devtools-system not found at $DEVTOOLS_DIR"
    echo "   Please install it first: cd ~/my-tools/hubers-devtools-system && ./setup.sh"
    exit 1
fi
success "hubers-devtools-system found"

# Check for Stream Deck app
if [[ -d "/Applications/Elgato Stream Deck.app" ]]; then
    success "Stream Deck app installed"
else
    warn "Stream Deck app not found - install from Elgato website or App Store"
fi

# Check for BetterTouchTool
if [[ -d "/Applications/BetterTouchTool.app" ]]; then
    success "BetterTouchTool installed"
else
    warn "BetterTouchTool not found - install from https://folivora.ai"
fi

###############################################################################
# Step 2: Install Shell Extension
###############################################################################
step "2" "Installing shell extension"

EXTENSION_DIR="$HOME/.zsh/extensions.d"
mkdir -p "$EXTENSION_DIR"

if [[ -f "$SCRIPT_DIR/extensions/streamdeck.zsh" ]]; then
    cp "$SCRIPT_DIR/extensions/streamdeck.zsh" "$EXTENSION_DIR/"
    success "Installed streamdeck.zsh extension"
else
    info "No shell extension to install yet"
fi

###############################################################################
# Step 3: Create Config Directories
###############################################################################
step "3" "Setting up config directories"

mkdir -p "$HOME/.config/streamdeck"
success "Created ~/.config/streamdeck"

###############################################################################
# Done
###############################################################################
echo ""
echo "=============================================="
echo "  Stream Deck Setup Complete!"
echo "=============================================="
echo ""
echo "Next steps:"
echo "  1. Configure Stream Deck app"
echo "  2. Set up BetterTouchTool triggers"
echo "  3. See profiles/ for example configurations"
echo ""
