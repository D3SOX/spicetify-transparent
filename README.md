# Spicetify transparent theme

A transparent theme based on <a href="https://github.com/Astromations/Hazy">Hazy</a> made for the old Spotify design (Before Library X migration).
    
### ⬇️ Automatic Installation

macOS and Linux

```bash
curl -fsSL https://raw.githubusercontent.com/D3SOX/spicetify-transparent/master/install.sh | sh
```    
    
### 📃 Manual Installation

Download the the repo and put `user.css`, `theme.js` and `color.ini` into a new folder named `Transparent`, and place this folder into your `Themes` folder in `.spicetify`.
Then run these commands to apply:
    
```powershell
spicetify config current_theme Transparent
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
```


