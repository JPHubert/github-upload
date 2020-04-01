#####################################################
############ Policy Definitions######################
#####################################################


#Require HTTPS connctions for storage accounts

$definition = New-AzureRmPolicyDefinition -Name StorageAcctReqHTTPS -Description "Deny Unsecure Storage account connections" -Policy '{
  "if": {
    "allOf": [
      {
        "field": "type",
        "equals": "Microsoft.Storage/storageAccounts"
      },
      {
        "not": {
          "field": "Microsoft.Storage/storageAccounts/supportsHttpsTrafficOnly",
          "equals": "true"
        }
      }
    ]
  },
  "then": {
    "effect": "deny"
  }
}'

#Tagging policy for resources
$TagDefaultValuePolicy = @"
{
  "if": {
    "field": "[concat('tags.',parameters('tagName'))]",
    "exists": "false"
  },
  "then": {
    "effect": "append",
    "details": [
      {
        "field": "[concat('tags.',parameters('tagName'))]",
        "value": "[parameters('tagValue')]"
      }
    ]
  }
}
"@

$TagDefaultValueParameters = '{
	"tagName": {
		"type": "String",
		"metadata": {
			"description": "Name of the tag, such as costCenter",
			"strongType": "tagName"
		}
	},
	"tagValue": {
		"type": "String",
		"metadata": {
			"description": "Value of the tag, such as headquarter",
			"strongType": "tagValue"
		}
	}
}'

New-AzureRmPolicyDefinition -Name "Tag values for inexisting tags" -Description "This policy will apply tags in case they don't exists see the New-AzureRMPolicyAssignment lines for details" -Policy $TagDefaultValuePolicy -Parameter $TagDefaultValueParameters

#Regional lockdown
$GeoLockdownPolicyDefinition = '{
 
  
    "if": {
      "not": {
        "field": "location",
        "in": [
          "centralus",
          "eastus2",
          "eastus",
          "southcentralus",
          "northcentralus",
          "westus2",
          "westus",
          "westeurope",
          "northeurope",
          "centralindia",
          "southeastasia"
        ]
      }
    },
    "then": {
      "effect": "deny"
    }


}'





New-AzureRmPolicyDefinition -Name "Geo-Lockdown"-DisplayName "Geo-Lockdown"-description "This policy enables you to restrict the locations your organization can specify when deploying resources. Use to enforce your geo-compliance requirements." -Policy $GeoLockdownPolicyDefinition 



