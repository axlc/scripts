#!/bin/bash

# This script does some apt-get's and git clone's for tools I always want available on a fresh Kali install:

CUR_DIR=$(pwd)

# But first, packages
sudo apt-get install volatility
sudo apt-get install veil
sudo apt-get install veil-catapault
sudo apt-get install veil-evasion
sudo apt-get install bloodhound -y
sudo apt-get install crackmapexec -y


cd /opt
# Now to capitalize on other people's hard work
git clone https://github.com/1N3/Findsploit.git
git clone https://github.com/1N3/Sn1per.git
git clone https://github.com/amriunix/ona-rce.git
git clone https://github.com/b374k/b374k.git
git clone https://github.com/braimee/bpatty.git
git clone https://github.com/byt3bl33d3r/CrackMapExec.git
git clone https://github.com/byt3bl33d3r/DeathStar.git
git clone https://github.com/byt3bl33d3r/MITMf.git
git clone https://github.com/byt3bl33d3r/SILENTTRINITY.git
git clone https://github.com/cheetz/brutescrape.git
git clone https://github.com/CoreSecurity/impacket.git
git clone https://github.com/dafthack/MailSniper.git
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/DanMcInerney/net-creds
git clone https://github.com/derv82/wifite2.git
git clone https://github.com/dirkjanm/impacket.git
git clone https://github.com/dirkjanm/krbrelayx.git
git clone https://github.com/drwetter/testssl.sh.git
git clone https://github.com/EmpireProject/Empire.git
git clone https://github.com/evilsocket/shellz.git
git clone https://github.com/foospidy/payloads.git
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
git clone https://github.com/fox-it/mitm6.git
git clone https://github.com/gen0cide/gscript.git
git clone https://github.com/hackern0v1c3/hash_combiner
git clone https://github.com/honze-net/nmap-bootstrap-xsl.git
git clone https://github.com/jqreator/honeydoc.git
git clone https://github.com/leonjza/awesome-nmap-grep.git
git clone https://github.com/lgandx/PCredz
git clone https://github.com/lgandx/Responder
git clone https://github.com/nabla-c0d3/sslyze.git
git clone https://github.com/nccgroup/chuckle.git
git clone https://github.com/NetSPI/PowerUpSQL.git
git clone https://github.com/pentestmonkey/php-reverse-shell.git
git clone https://github.com/pentestmonkey/smtp-user-enum.git
git clone https://github.com/pentestmonkey/unix-privesc-check.git
git clone https://github.com/pentestmonkey/windows-privesc-check.git
git clone https://github.com/portcullislabs/enum4linux.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
git clone https://github.com/Qry3vavna/hostsurvey.git
git clone https://github.com/Qry3vavna/poports.git
git clone https://github.com/Qry3vavna/scripts.git
git clone https://github.com/rasta-mouse/Sherlock.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/rsmudge/cortana-scripts.git
git clone https://github.com/rsmudge/Malleable-C2-Profiles.git
git clone https://github.com/RUB-NDS/PRET.git
git clone https://github.com/s0lst1c3/eaphammer.git
git clone https://github.com/samratashok/nishang.git
git clone https://github.com/secretsquirrel/the-backdoor-factory.git
git clone https://github.com/shellinabox/shellinabox.git
git clone https://github.com/smicallef/spiderfoot.git
git clone https://github.com/stasinopoulos/commix.git
git clone https://github.com/stufus/egresscheck-framework.git
git clone https://github.com/theZiz/aha.git
git clone https://github.com/trustedsec/hate_crack.git
git clone https://github.com/wpscanteam/wpscan.git

# Fix anything that might have broken from installing
sudo apt --fix-broken install

cd $CUR_DIR

