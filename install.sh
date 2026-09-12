#!/usr/bin/env bash
set -euo pipefail

repo="eL-iam123/telepromptr-downloads"
api="https://api.github.com/repos/$repo/releases/latest"

command -v curl >/dev/null || { echo "curl is required." >&2; exit 1; }
mkdir -p "$HOME/.local/bin"
asset_url="$(curl -fsSL "$api" | grep -o '"browser_download_url": "[^"]*\.AppImage"' | head -n1 | cut -d'"' -f4)"
[ -n "$asset_url" ] || { echo "No AppImage was found in the latest release." >&2; exit 1; }
curl -fL "$asset_url" -o "$HOME/.local/bin/telepromptr"
chmod +x "$HOME/.local/bin/telepromptr"
printf 'Installed Telepromptr at %s\n' "$HOME/.local/bin/telepromptr"
printf 'Run it with: telepromptr\n'
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) printf 'Add ~/.local/bin to PATH if the command is not found.\n' ;; esac
