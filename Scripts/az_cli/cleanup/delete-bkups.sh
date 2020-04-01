#!/bin/bash

az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-WIND-P;10MWINVM1" --item-name "VM;iaasvmcontainerv2;10M-WIND-P;10MWINVM1" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data --yes

az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-WIND-P;10MWINVM0" --item-name "VM;iaasvmcontainerv2;10M-WIND-P;10MWINVM0" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data --yes

az backup protection disable --container-name "IaasVMContainer;iaasvmcontainerv2;10M-CLOUDADMIN-P;10MWINMGMT0" --item-name "VM;iaasvmcontainerv2;10M-CLOUDADMIN-P;10MWINMGMT0" --resource-group 10M-CLOUDADMIN-P --vault-name tenm-recovery-vault --delete-backup-data --yes
