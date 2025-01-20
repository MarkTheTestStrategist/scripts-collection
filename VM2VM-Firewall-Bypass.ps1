echo "To Enable Ping"
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol=icmpv6:8,any dir=in action=allow

echo "To Enable Service 1"
netsh advfirewall firewall add rule name="<service name>" dir=in action=allow program="C:\Program Files\<path to service.exe>" enable=yes

echo "To Enable service 2"
netsh advfirewall firewall add rule name="<service name>" dir=in action=allow program="C:\Program Files\<path to service.exe" enable=yes

echo "Repeat these foreach service where Displayname is the service name .. start"
New-NetFirewallRule -DisplayName '<name>' -Profile  'Any' -Direction Inbound -Action Allow -Protocol Any -RemotePort Any

echo "You will need to repeat these three for each SIM Engine service .. start"
New-NetFirewallRule -DisplayName '<name>' -Profile  'Any' -Direction Outbound -Action Allow -Protocol Any -RemotePort Any