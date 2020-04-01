###############################################################
#register resource providers automagically for the subscription
###############################################################

# $exceptionlist contains the Microsoft.* items we do not want to add to every subscription.
# subscriptions needing these will need to be added manually
$exceptionlist = @()
$exceptionlist += "Microsoft.ClassicCompute"
$exceptionlist += "Microsoft.ClassicNetwork"
$exceptionlist += "Microsoft.ClassicStorage"
$exceptionlist += "Microsoft.AAD"
$exceptionlist += "microsoft.aadiam"
$exceptionlist += "Microsoft.AzureActiveDirectory"
$exceptionlist += "Microsoft.KeyVault"
$exceptionlist += "Microsoft.DynamicsLcs"

#$extralist is an array of any providers that we want in all subscriptions, that do not start with Microsoft"
$extraList =@()
#$extralist += "Cloudyn.Analytics"
#$extralist += "AppDynamics.APM"



	
	#get a list of all Microsoft.* providers that are currently unregistered
	$unregisteredproviders = get-azurermresourceprovider -listavailable | where {$_.ProviderNamespace -like "Microsoft.*" -and $_.RegistrationState -eq "NotRegistered"} | select -ExpandProperty ProviderNamespace
	

	#the above list will include some items we don't actually want, so we'll remove them here::
	$neededproviders = $unregisteredproviders | ?{ $exceptionlist -notcontains $_}
	
	#Since the above statement only pulls Microsoft.* providers, we will add any non-MS providers here:
	$neededproviders += $extralist

	foreach ($Provider in $neededproviders)
	{
      
		Register-AzureRmResourceProvider -ProviderNamespace $Provider
		
	}
