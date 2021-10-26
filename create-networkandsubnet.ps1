#Create the virtual network with PowerShell

$vnet = @{
    Name = 'ualr4399-pham-Vnet1'
    ResourceGroupName = 'UALR-Duc-Pham-rg'
    Location = 'EastUS'
    AddressPrefix = '10.0.0.0/16'    
}
$virtualNetwork = New-AzVirtualNetwork @vnet

#Add a subnet 

$subnet = @{
    Name = 'Server Subnet'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.0.0.0/24'
}
Add-AzVirtualNetworkSubnetConfig @subnet