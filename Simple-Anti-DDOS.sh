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
iptables -A INPUT -p tcp --dport 2200 -j ACCEPT
iptables -A INPUT -j DROP

iptables-save > /etc/iptables.rules