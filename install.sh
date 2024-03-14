#!/bin/sh

set -e

theme_name="Transparent"

# Download URL
theme_url="https://github.com/D3SOX/spicetify-transparent"

# Setup directories to download to
spice_dir="$(dirname "$(spicetify -c)")"
theme_dir="${spice_dir}/Themes"

# Make directories if needed
mkdir -p "${theme_dir}/${theme_name}"

# Download latest tagged files into correct director
echo "Downloading theme..."
git clone "$theme_url" "$theme_name"
echo "Done"

# Apply theme
echo "Applying theme"
spicetify config current_theme "$theme_name"
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply

echo "All done!"
