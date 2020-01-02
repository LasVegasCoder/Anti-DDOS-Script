# This is a Web Server Firewall.
# This Webserver firewall allow access to port 80 and 443 
# Whitelist your IP and other Web Server Administrator to access your Web Server;
# Don't forget to change SSH port on line# 24
# Author: Prince Adeyemi
# FB: fb.com/YourVegasPrince

# iptables -F  #
iptables -A FORWARD -j DROP
iptables -A OUTPUT -j ACCEPT

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT ! -i lo -d 127.0.0.0/8 -j DROP
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport http -j ACCEPT
iptables -A INPUT -p tcp --dport https -j ACCEPT

iptables -N specialips
iptables -A specialips -s xxx.xxx.xxx.xxx -j RETURN  # a trusted IP Address
iptables -A specialips -s yyy.yyy.yyy.yyy -j RETURN  # another trusted IP Address
iptables -A specialips -j DROP

iptables -A INPUT -j specialips
iptables -A INPUT -p tcp --dport 2200 -j ACCEPT           # change this port to your prefer SSH port.
iptables -A INPUT -j DROP

iptables-save > /etc/iptables.rules
