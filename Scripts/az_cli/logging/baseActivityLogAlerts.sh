#
#A few activity log alert creations - follows CIS benchmarks
#
#

az monitor activity-log alert create -n CreatePolicyAssn -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Authorization/policyAssignments/write -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n CreateUpdateNSG -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Network/networkSecurityGroups/write -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n DeleteNSG -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Network/networkSecurityGroups/delete -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n CreateUpdateSecNSG -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Network/networkSecurityGroups/securityRules/write -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n DeleteSecNSG -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Network/networkSecurityGroups/securityRules/delete -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n CreateUpdateSecSOLN -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Security/securitySolutions/write -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n DeleteSecSOLN -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Security/securitySolutions/delete -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n CreateUpdateFW -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Sql/servers/firewallRules/write -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n DeleteFW -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Sql/servers/firewallRules/delete -a 10MPOC-ADMIN-ACTION-ALERTS

az monitor activity-log alert create -n CreateUpdateSecPolicy -g 10MPOC-MONI-P --condition category=Administrative and operationName=Microsoft.Security/policies/write -a 10MPOC-ADMIN-ACTION-ALERTS
