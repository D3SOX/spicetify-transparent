# Spicetify transparent theme

A transparent theme based on <a href="https://github.com/Astromations/Hazy">Hazy</a> made for the old Spotify design (Before Library X migration).
    
### ⬇️ Automatic Installation

macOS and Linux

```bash
curl -fsSL https://raw.githubusercontent.com/D3SOX/spicetify-transparent/master/install.sh | sh
```    
    
### 📃 Manual Installation

Run these commands inside your `Themes` folder in `.spicetify` to apply:
    
```powershell
git clone https://github.com/D3SOX/spicetify-transparent Transparent
spicetify config current_theme Transparent
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply
```

### ⬇️ Automatic Updates

macOS and Linux

```bash
cd "$(dirname "$(spicetify -c)")"/Themes/Transparent && ./update.sh
``` 

### 📃 Manual Updates

Run these commands inside your `.spicetify/Themes/Transparent` folder:

```powershell
git pull
spicetify apply
```