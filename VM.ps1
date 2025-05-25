# Login to Azure first:
# Connect-AzAccount

# Simple VM creation
New-AzVm `
    -ResourceGroupName "MyResourceGroup" `
    -Name "MySimpleVM" `
    -Location "EastUS" `
    -VirtualNetworkName "MyVnet" `
    -SubnetName "MySubnet" `
    -SecurityGroupName "MyNSG" `
    -PublicIpAddressName "MyPublicIP" `
    -OpenPorts 3389 `
    -Image "Win2019Datacenter" `
    -Credential (Get-Credential) `
    -Size "Standard_D2s_v3"

