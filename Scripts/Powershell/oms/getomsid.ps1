###############################################################
#Date: 4/20/18
#scriptName: getomsid.ps1
#Author: John Perry jperry@10thmagnitude.com
#
#Description:  simple stop gap to grab the oms workspace id
#              and dump it into keyvault.  this is part of 
#              vsts workflow and there seems to be no way 
#              grab it in an arm template (which is annoying)
#
#
#
###############################################################

$rgname = "10M-MONI-P"
$omsname = "tenmoms"
$keyvault = "tenm-vault"
$keynamewkspc = "omsWorkSpaceID"
$keynameprimkey = "omsPrimaryKey"
$keynamesecKey = "omsSecondaryKey"



##get workspaceid
$oms=Get-AzureRmOperationalInsightsWorkspace -ResourceGroupName $rgname -Name $omsname
$workspaceID = $oms.CustomerId


#Create the secret in keyvault - oms workspace
$Secret = ConvertTo-SecureString -String $workspaceID -AsPlainText -Force

Set-AzureKeyVaultSecret -VaultName $keyvault -Name $keynamewkspc -SecretValue $Secret


$key=Get-AzureRmOperationalInsightsWorkspaceSharedKeys -ResourceGroupName $rgname -Name $omsname 
$primaryKey = $key.PrimarySharedKey
$secondaryKey = $key.SecondarySharedKey


#Create the secret in keyvault  - primary key/secondary key
$SecretPrimkey = ConvertTo-SecureString -String $primaryKey -AsPlainText -Force
$SecretSeckey = ConvertTo-SecureString -String $secondaryKey -AsPlainText -Force


Set-AzureKeyVaultSecret -VaultName $keyvault -Name $keynameprimkey -SecretValue $SecretPrimkey
Set-AzureKeyVaultSecret -VaultName $keyvault -Name $keynamesecKey -SecretValue $SecretSeckey
