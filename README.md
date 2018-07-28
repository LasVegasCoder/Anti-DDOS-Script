Firewall and Network Monitoring script handy for both beginners and advanced Network Engineer

	Simple Anti DDOS Bash Script
	This scrip provide basic protection for server unix/linux server or devices.
	
Let me demonstrate a basic protection usage:
	
	Only port 80, 443 are allowed by default to your server, 
	this allows web traffic to reach your server on both port 80(http) or 443(https)
	
	Management port 2200 is whitelisted and allowed connection to the server, for managing purpose.
	
	All other connection are blocked.  
	
	This also make you invincible to many script kiddies, since your server will not respond to
	any ping from outsite the world.
	
Step #1 Download Simple-Anti-DDOS to your system.
	
	wget https://github.com/LasVegasCoder/Anti-DDOS-Script/blob/master/Simple-Anti-DDOS.sh
	
Step #2 Make it executable
	chmod +x Simple-Anti-DDOS.sh
	
	chmod +x Simple-Anti-DDOS.sh
	
Step #3 Run it
	./Simple-Anti-DDOS.sh
	
	./Simple-Anti-DDOS.sh
	You're protected!
	
	
Try to ping your server from another computer.
ping domain.com
	
	You will get 'Request timed out.'
	
	
	Advance Anti DDOS Protection Script
	This Advanced Anti DDOS Protection script provide more protections than basic.  
	Some filtering were added to provide more protection for attacks that basic protection may
	not have missed.
	
	Replace the WAN and LAN infterface with your interface name if not the same.
	
Step #1 Download Simple-Anti-DDOS to your system.
	
	wget https://github.com/LasVegasCoder/Anti-DDOS-Script/blob/master/advanced-anti-ddos.sh
	
Step #2 Make it executable
	chmod +x advanced-anti-ddos.sh
	
Step #3 Run it.
	./advanced-anti-ddos.sh
	
	You're protected!	
	
	
	Prince Server Guard script is a private script written not only protect server, but to also
	log each predefined attempt and labeled them such as SYN-FLOOD, SPAMMER, HACKER, SCRIPTER.
	This way it bans SPAMMER, HACKER on auto by add their IP to the BLOCKED-DATA.
	
	It also update the BLOCKED-DATA by downloading BLACKLIST ip address from spamhaus and 
	adds it to the local BLOCKED-DATA.  This way if any IP is black listed, it will be blocked on my system.
	
Step #1 Download Prince Guard Script to your system.
	
	wget https://github.com/LasVegasCoder/Anti-DDOS-Script/blob/master/prince-server-guard.ipt
	
Step #2 Make it executable
	chmod +x prince-server-guard.ipt
	
Step #3 Run it.
	./prince-server-guard.ipt
	
	You're protected!

If you want to undo to the previous firewall rule before this was executed.	
There is a back up of your current firewall rule (if any) located where this
was executed.

current-firewall-backup-of-2017-10-10.log #dated file.

Restore with :
	iptables-restore < current-firewall-backup-of-2017-10-10.log
	
	And you are back to previous security.


NOTE: The script requires root privileges to run smoothly, thus do:

	user@hostname# sudo -i 	
	Password: 
	root@hostname# 	


ShowIT display data in ASCII as it moves accross your network.

	ShowIT display data in ASCII as it moves accross your network.   
	Use this script ONLY on network that you own, or with permission from owner for troubleshooting purposes.
	
	This script will display both non vital and vital inforamtion as on your network in realtime.
	
	Information such as USERNAME, PASSWORD and other is displayed on your console 
	as users types in from their devices 
	
	Step #1 Download Prince Guard Script to your system.
		
	wget hhttps://raw.githubusercontent.com/LasVegasCoder/Anti-DDOS-Script/master/showit
	
	Step #2 Make it executable
		chmod +x showit
		
	Step #3 Run it.
		./showit
		
	WATCH DATA DISPLAYING ON YOUR CONSOLE!
