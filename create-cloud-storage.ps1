#How to create a storage account.
New-AzStorageAccount -ResourceGroupName "UALR-Duc-Pham-rg" `
 -Name "ducphamsa" `
 -Location eastus `
 -SkuName "Standard_LRS" `
 -Kind StorageV2 `

#Create a File Share inside the Storage account, run each command one at a time after creating storage account

$StorageAccountName = get-azstorageaccount -StorageAccountName "ducphamsa" -ResourceGroupName "UALR-Duc-Pham-rg"

New-AzRmStorageShare -StorageAccount $StorageAccountName -Name "ducphamsa"