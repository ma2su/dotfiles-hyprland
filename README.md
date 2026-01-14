<h1 align="center">❄️ dotfiles-hyprland</h1>

<p align="center">
  Minimal Hyprland dotfiles focused on a clean, fast and keyboard-driven workflow.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/WM-Hyprland-blue?style=flat-square">
  <img src="https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat-square">
  <img src="https://img.shields.io/badge/Display-Wayland-orange?style=flat-square">
  <img src="https://img.shields.io/badge/Shell-Bash-lightgrey?style=flat-square">
</p>

---

## 🖼️ Preview

<p align="center">
  <img src="screenshots/image.png" alt="Hyprland desktop preview" width="90%">
  <img src="screenshots/image copy.png" alt="Other stuff" width="90%">
  <img src="screenshots/image copy 3.png" alt="Other stuff" width="90%">
  <img src="screenshots/image copy 2.png" alt="Other stuff" width="90%">
</p>

---

## 🧩 Components

- **Window Manager**: Hyprland  
- **Status Bar**: Waybar  
- **Terminal**: Kitty  
- **Launcher**: Wofi  
- **Notifications**: SwayNC  

---

## ✨ Features

- Minimal and distraction-free UI  
- Keyboard-oriented workflow  
- Lightweight and fast configuration  
- Custom scripts for system control  
- Clean and portable paths (`$HOME` based)

---

## 📁 Repository Structure

```text
hypr/        → Hyprland configuration
waybar/     → Waybar config and styling
kitty/      → Kitty terminal configuration
wofi/       → Application launcher config
swaync/     → Notification daemon config
scripts/    → Custom shell scripts
wallpapers/ → Wallpapers
screenshots/→ Desktop previews
```
<h2 id="installation">🚀 Installation</h2>

<div align="left">
  <table style="border: 2px solid #ff4d4d; border-radius: 10px; background-color: #1a1a1a; width: 100%;">
    <tr>
      <td style="padding: 15px;">
        <strong style="color: #ff4d4d;">⚠️ [!CAUTION]</strong><br>
        <i>These dotfiles are personal and may require adjustments depending on your setup.</i>
      </td>
    </tr>
  </table>
</div>

<br>

<ol>
  <li>
    <strong>Clone the repository:</strong>
    <pre><code>git clone https://github.com/ma2su/dotfiles-hyprland.git
cd dotfiles-hyprland</code></pre>
  </li>

  <li>
    <strong>Copy the configurations:</strong>
    <p>Copy the desired configurations manually to your <code>~/.config/</code> directory:</p>
    <pre><code>cp -r hypr waybar kitty wofi swaync ~/.config/</code></pre>
  </li>

  <li>
    <strong>Execution permissions:</strong>
    <p>Don't forget to make your scripts executable:</p>
    <pre><code>chmod +x ~/.config/hypr/scripts/*</code></pre>
  </li>
</ol>

<hr>

<p align="center">Built with ❤️ by <strong>ma2su</strong></p>
