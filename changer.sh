for file in *.py; do
sed -i 's/player/pacman/g' "$file"
done