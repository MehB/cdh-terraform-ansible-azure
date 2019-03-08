resource "azurerm_resource_group" "terraform_rg" {
  name 		= "${var.resource_group_name}"
  location 	= "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
  name 			= "cdh-vnet"
  address_space 	= ["${var.vnet_cidr}"]
  location 		= "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_subnet" "subnet_1" {
  name 			= "Subnet-1"
  address_prefix 	= "${var.subnet1_cidr}"
  virtual_network_name 	= "${azurerm_virtual_network.vnet.name}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
}

resource "azurerm_subnet" "subnet_2" {
  name 			= "Subnet-2"
  address_prefix 	= "${var.subnet2_cidr}"
  virtual_network_name 	= "${azurerm_virtual_network.vnet.name}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
}
