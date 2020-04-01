##########################################################
#!/bin/bash
#script: delGrps.sh
#Description:  Deletes the groups for the 10MPOC env
#
#
##########################################################


env="10MPOC";
location="South Central US";


#add grp names to the array
declare -a grparr=("CLOUDADMIN-P" "ADDS-P" "HNET-P" "BKUP-P" "LINX-P" "LINX-N"  "WIND-P" "WIND-N" "SNET-N" "SNET-P" "SATURN-N" "SATURN-P" "MONI-P")

## now loop through the groups and delete them
 
for grp in "${grparr[@]}";

do

	echo "Deleting group "$env-$grp"...."


	 az group delete --name "$env-$grp" --yes

done
