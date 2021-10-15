#Variable names
$ResourceGroup = "UALR-Duc-Pham-rg"
$WorkspaceName = "log-analytics-Duc"

#Deploy a solution to your Log Analytics workspace.

Set-AzOperationalInsightsIntelligencePack -ResourceGroupName "UALR-Duc-Pham-rg" -WorkspaceName "log-analytics-Duc" -IntelligencePackName AgentHealthAssessment -Enabled $true
