resource "azurerm_role_assignment" "vm_contributor" {
  scope                = data.azurerm_resource_group.rg.id
  role_definition_name = "Virtual Machine Contributor"
  principal_id         = "YOUR-AZURE-OBJECT-ID"
}