##########################################################
#!/bin/bash
#script: makeGrps.sh
#Description:  Creates the groups for the 10MPOC env
#
#
##########################################################


env="10MPOC";
location="South Central US";


#add grp names to the array
declare -a grparr=("CLOUDADMIN-P" "ADDS-P" "HNET-P" "LINX-P" "LINX-N"  "WIND-P" "WIND-N" "SNET-N" "SNET-P" "SATURN-N" "SATURN-P" "MONI-P")

## now loop through the groups and create them
 
for grp in "${grparr[@]}";

do

	echo "Making group "$env-$grp" in the $location region...."


	 az group create --name "$env-$grp" --location "$location"

done
