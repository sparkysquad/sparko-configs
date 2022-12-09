

#Setup target directory
targetDir = "/wallpapers"

function get_random_photo() {
	#Returns random file from target directory
	files = ( "$targetDir"/* )
	echo "${files[RANDOM % ${#files[@]}]}"
	
}

function setBackground() {
	bg="$="
	echo "Setting wallpaper to $bg"

	#gsettings set org.gnome.desktop.background picture-uri "file://$bg"
	#todo - write universal script
}

background=$(get_random_photo)
echo "Next background is $background"
setBackground $background
