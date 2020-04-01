##########################################################
#!/bin/bash
#script: delGrps.sh
#Description:  Deletes the groups for the 10MPOC env
#
#
##########################################################


env="10M";
location="South Central US";


#add grp names to the array
declare -a grparr=("CLOUDADMIN-P" "HNET-P" "LINX-P" "WIND-P" "SNET-P" "MONI-P")


## remove the locks that are part of the vdc

echo "Removing locks"
az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourcegroups/10M-HNET-P/providers/Microsoft.Network/virtualNetworks/10MVNETP-172.20.0.0_23/providers/Microsoft.Authorization/locks/virtualNetworkLock" 
az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourcegroups/10M-SNET-P/providers/Microsoft.Network/virtualNetworks/10MSNETP-172.20.16.0_21/providers/Microsoft.Authorization/locks/virtualNetworkLock"
az lock delete --ids "/subscriptions/5812a8ba-0c59-46ab-a3ed-a36b202a8534/resourceGroups/10M-MONI-P/providers/Microsoft.OperationalInsights/workspaces/tenmoms/views/Azure Backup Monitoring Solution/providers/Microsoft.Authorization/locks/AzureBackup[tenmoms]-Azure Backup Monitoring Solut"

#deleting backups so the vault can be removed
az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-WIND-P;10MWINVM1" --item-name "VM;iaasvmcontainerv2;10M-WIND-P;10MWINVM1" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data
az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-WIND-P;10MWINVM0" --item-name "VM;iaasvmcontainerv2;10M-WIND-P;10MWINVM0" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data
az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-CLOUDADMIN-P;10MWINMGMT0" --item-name "VM;iaasvmcontainerv2;10M-CLOUDADMIN-P;10MWINMGMT0" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data

## now loop through the groups and delete them
 
for grp in "${grparr[@]}";

do

	echo "Deleting group "$env-$grp"...."


	 az group delete --name "$env-$grp" --yes

done
