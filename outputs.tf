# Define output values for later reference
output "resource_group_name" {
  description ="The output assigns a description to the resource_group_name variable, detailing its role and offering extra context with the description Info about deployed resource group."
  value = azurerm_resource_group.rg.name
}

output "vm_name" {
  value = "${var.label_prefix}-${azurerm_linux_virtual_machine.webserver.name}"
  description="The output defines vm_name as the name attribute of the azurerm_linux_virtual_machine resource, indicating the Linux VM's name."
}

output "nic_name" {
  value = "${var.label_prefix}-${azurerm_network_interface.webserver.name}"
  description="The output sets nic_name to the name attribute of the azurerm_network_interface resource, representing its network interface name."
}

output "public_ip" {
  value = "${var.label_prefix}-${azurerm_linux_virtual_machine.webserver.public_ip_address}"
  description="The output defines public_ip as the azurerm_linux_virtual_machine resource's public_ip_address, linked to the azurerm_network_interface."
}