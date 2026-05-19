# arch-hyprdots

Aesthetic, dynamic Arch Linux Hyprland dotfiles.

## Prerequisites

- **Vanilla Arch Linux** (x86_64) — not an Arch derivative
- **Btrfs root filesystem**
- **Limine bootloader**
- **Secure Boot disabled** in firmware
- A non-root user account with sudo access

## Installation

### Quick install (from Arch Linux ISO or installed system)

```bash
curl -fsSL https://raw.githubusercontent.com/trevor-d-ndlovu/arch-hyprdots/master/boot.sh | bash
```

### Manual install

```bash
git clone https://github.com/trevor-d-ndlovu/arch-hyprdots.git ~/.local/share/hyprdots
source ~/.local/share/hyprdots/install.sh
```

## Keybinds

| Keys | Action |
|------|--------|
| `Super + Return` | Terminal |
| `Super + Space` | Application launcher |
| `Super + K` | Keybind cheatsheet |
| `Super + Alt + Space` | Hyprdots menu |
| `Super + Q` | Close focused window |

See `Super + K` for the full list.

## License

MIT
