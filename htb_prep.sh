!/bin/bash

error () {
    echo >&1 "$@"
    echo "You must specify the hostname!"
    exit 1
}


[ "$#" -eq 1 ] || error "Only one hostname can be specified"

hostname=$1

echo "Creating $hostname directory..."
mkdir -p /share/hackthebox/boxes/$hostname

echo "Changing to $hostname directory..."
cd /share/hackthebox/boxes/$hostname

echo "Creating notes from template..."
cp /share/hackthebox/notes_template.txt /share/hackthebox/boxes/$hostname/notes_$hostname.txt

sed -i "s/<hostname>/$hostname/g" /share/hackthebox/boxes/$hostname/notes_$hostname.txt

echo "Initiating OpenVPN connection to hackthebox servers..."
xfce4-terminal -e "sudo /usr/sbin/openvpn /share/hackthebox/yourhandle.ovpn"

echo "Ready to open host notes."
read -p "Press enter to contine..."
vim /share/hackthebox/boxes/$hostname/notes_$hostname.txt
