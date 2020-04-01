
##########################
#SATURN DEMO BUILD
##########################

#SUBSCRIPTIONS
$subscriptionId10MNONP = "298e0c6b-4e0e-4467-bb19-651d84db954b"  #10th Mag Non-Prod
$subscriptionId10MPROD = "82d4f7c4-34e3-44b4-ad16-23a8d736495f"  #10th Mag Prod


##########################
# NON PROD BUILDS
##########################
#SetSubscription
$sub = Select-AzureRmSubscription -SubscriptionId $subscriptionId10MNONP

# DEV BUILDS
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-001-D -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-002-D -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-003-D -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-004-D -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json

# TEST BUILDS
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-001-T -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-002-T -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-003-T -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-004-T -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json



##########################
# PROD BUILDS
##########################
#SetSubscription
$sub = Select-AzureRmSubscription -SubscriptionId $subscriptionId10MPROD

#STAGE BUILDS
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-001-S -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-002-S -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-003-S -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-004-S -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json

#PROD BUILDS
# New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-001-P -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
# New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-002-P -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
# New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-003-P -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
# New-AzureRmResourceGroupDeployment -Name SaturnDemoDEVDeployment -ResourceGroupName 10M-SaturnDemo-004-P -TemplateFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.json -TemplateParameterFile D:\mhanson\~Projects\Ecolab\DemoTemplate\azuredeploy.parameters.json
