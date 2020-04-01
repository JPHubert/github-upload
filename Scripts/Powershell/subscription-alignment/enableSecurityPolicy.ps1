###########################################
# Azure Security Center
# default policy setup for subscriptions
###########################################
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
Install-Module -Name Azure-Security-Center -Scope CurrentUser -Force

#####
# Azure Security Center
#####

#List default policy info
Get-ASCPolicy -PolicyName default | Format-List

#Build JSON of ASC Policy based on the Sub you are connected to (this just outputs the info, does not set it)
Build-ASCPolicy -PolicyName default

#Set Policy on Subscription

Set-ASCPolicy -PolicyName default -JSON `
(Build-ASCPolicy -PolicyName default -Patch On -Baseline On -AntiMalware On `
-DiskEncryption On -ACLS On -NSGS On -WAF Off -SQLAuditing On -SQLTDE On `
-NGFW Off -VulnerabilityAssessment Off -StorageEncryption On -JITNetworkAccess On `
-ApplicationWhitelisting On -DataCollection On `
-SecurityContactEmail "jperry@10thmagnitude.com" -SecurityContactNotificationsOn true `
-SecurityContactSendToAdminOn false -PricingTier Standard -SecurityContactPhone "")
Build-ASCPolicy -PolicyName default
