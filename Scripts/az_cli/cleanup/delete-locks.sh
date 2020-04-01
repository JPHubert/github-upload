#!/bin/bash

az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourcegroups/10M-HNET-P/providers/Microsoft.Network/virtualNetworks/10MVNETP-172.20.0.0_23/providers/Microsoft.Authorization/locks/virtualNetworkLock" 
az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourcegroups/10M-SNET-P/providers/Microsoft.Network/virtualNetworks/10MSNETP-172.20.16.0_21/providers/Microsoft.Authorization/locks/virtualNetworkLock"
az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourceGroups/10M-MONI-P/providers/Microsoft.OperationalInsights/workspaces/tenmoms/views/Azure Backup Monitoring Solution/providers/Microsoft.Authorization/locks/AzureBackup[tenmoms]-Azure Backup Monitoring Solut"
