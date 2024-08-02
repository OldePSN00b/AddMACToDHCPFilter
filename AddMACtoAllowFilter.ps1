#This script prompts to add a MAC address to DHCP's Allow filter. Requires AD tools.
$mac = Read-Host -Prompt "Enter the Computer Mac Address"
$desc = Read-Host -Prompt "Enter the Computer Short Description"

# Replace ":" with "-" in the MAC address
$mac = $mac -replace ":", "-"

Add-DhcpServerv4Filter -CimSession yourdc -List Allow -MacAddress $mac -Description $desc
