<div align="center">

# ✨ Waybar Config for Hyprland

Minimal, clean and modern Waybar configuration for Hyprland.

<img src="https://img.shields.io/badge/Hyprland-Wayland-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/Linux-ArchLinux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white">
<img src="https://img.shields.io/badge/Waybar-Custom-purple?style=for-the-badge">

</div>

---

# 🖼 Preview

<div align="center">

![Preview](screenshot.png)

</div>

---

# 📦 Installation

## 1 — Clone repository

```bash
git clone https://github.com/byte5691-blip/waybar-config
```

## 2 — Open folder

```bash
cd waybar-config
```

## 3 — Make installer executable

```bash
chmod +x setup.sh
```

## 4 — Install config

```bash
./setup.sh
```

---

# 🔄 Reboot

After installation reboot your PC or relogin into Hyprland.

---

# ⚡ Features

- Modern Waybar design
- Hyprland workspace support
- Blur/transparency
- Nerd Font icons
- Battery / Audio / Network modules
- Clean rounded UI
- Fast setup script

---

# 🛠 Dependencies

Install required packages:

```bash
sudo pacman -S waybar hyprland kitty grim slurp wl-clipboard ttf-jetbrains-mono-nerd
```

---

# 📁 Config Location

```bash
~/.config/waybar
```

---
---

# 🎨 Add Your Own Icon

You can add your own custom app button/module to Waybar.

---

##   Add module

Open config:

```bash
nano ~/.config/waybar/config.jsonc
```

Example module:

```json
"custom/discord": {
    "format": "",
    "on-click": "discord"
},
```

Flatpak version:

```json
"custom/discord": {
    "format": "",
    "on-click": "flatpak run com.discordapp.Discord"
},
```

---

## Add module to Waybar

Find:

```json
"modules-left": [
```

Add your module:

```json
"modules-left": [
    "custom/discord",
    "hyprland/workspaces"
],
```

You can place it anywhere you want.

---

## Add CSS style

Open style file:

```bash
nano ~/.config/waybar/style.css
```

Add:

```css
#custom-discord {
    background: rgba(18,18,24,0.92);
    color: white;

    border-radius: 16px;

    padding: 0 20px;

    margin-top: 6px;
    margin-bottom: 6px;
}
```

---

## Restart Waybar

```bash
pkill waybar && waybar
```

---

# 🔤 Find More Icons

Nerd Fonts icon website:

- [Nerd Fonts Cheat Sheet](https://www.nerdfonts.com/cheat-sheet?utm_source=chatgpt.com)

Example icons:

| App | Icon |
|---|---|
| Discord | `` |
| Linux | `` |
| Arch | `` |
| Firefox | `󰈹` |
| Steam | `` |

Copy icon and replace:

```json
"format": "ICON"
```

with your own icon.
