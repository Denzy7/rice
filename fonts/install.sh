#run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "Installing Windows Segoe UI font..."
cp segoeui.ttf /usr/share/TTF

echo "Regenerating  font cache..."
fc-cache

echo "Now select Segoe UI using your favourite appearance tool!"
