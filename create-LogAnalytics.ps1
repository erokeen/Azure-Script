#Creating Log analytics workspace.

$ResourceGroup = "UALR-Duc-Pham-rg"
$WorkspaceName = "log-analytics-Duc"
$Location = "eastus"


# Create the workspace
New-AzOperationalInsightsWorkspace -Location $Location -Name $WorkspaceName -Sku Standard -ResourceGroupName $ResourceGroup