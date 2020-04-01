#
#Creates log profile to be used
#Note: Need to update the "storage-account-id" with the resource ID of the storage account that you are storing logs to
#

az monitor log-profiles create --categories Write Delete Action --days 365 --storage-account-id /subscriptions/d4c489d8-20ae-42bb-81da-7d6bf72f4bf3/resourceGroups/10MPOC-CLOUDADMIN-P/providers/Microsoft.Storage/storageAccounts/tenmpocstorage --enabled true --location "South Central US" --locations "South Central US" "East US" "East US 2" --name 10MPOCLOGProfile

