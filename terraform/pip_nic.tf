resource "azurerm_public_ip" "manager_pip" {
  name 				= "cdh-pip"
  location 			= "${var.location}"
  resource_group_name 		= "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation 	= "static"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_network_interface" "public_nic" {
  name 		      = "manager_network_interface"
  location 	      = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_cluster.id}"

  ip_configuration {
    name 			= "manager_ip"
    subnet_id 			= "${azurerm_subnet.subnet_1.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id	= "${azurerm_public_ip.manager_pip.id}"
  }
  tags {
	group = "Coudera-Cluster"
  }
}


resource "azurerm_public_ip" "master_pip" {
  name 				= "cdh-pip1"
  location 			= "${var.location}"
  resource_group_name 		= "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation 	= "static"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_network_interface" "public_nic1" {
  name 			= "master_network_interface"
  location 		= "${var.location}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_cluster.id}"

  ip_configuration {
    name 			= "master_ip"
    subnet_id 			= "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id	= "${azurerm_public_ip.master_pip.id}"
  }
  tags {
	group = "Coudera-Cluster"
  }
}


resource "azurerm_public_ip" "worker1_pip" {
  name 				= "cdh-pip2"
  location 			= "${var.location}"
  resource_group_name 		= "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation 	= "static"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_network_interface" "public_nic2" {
  name 			= "worker1_network_interface"
  location 		= "${var.location}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_cluster.id}"

  ip_configuration {
    name 			= "worker1_ip"
    subnet_id 			= "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id	= "${azurerm_public_ip.worker1_pip.id}"
  }
  tags {
	group = "Coudera-Cluster"
  }
}


resource "azurerm_public_ip" "worker2_pip" {
  name 				= "cdh-pip3"
  location 			= "${var.location}"
  resource_group_name 		= "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation 	= "static"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_network_interface" "public_nic3" {
  name 			= "worker2_network_interface"
  location 		= "${var.location}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_cluster.id}"

  ip_configuration {
    name 			= "worker2_ip"
    subnet_id 			= "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id	= "${azurerm_public_ip.worker2_pip.id}"
  }
  tags {
	group = "Coudera-Cluster"
  }
}


resource "azurerm_public_ip" "worker3_pip" {
  name 				= "cdh-pip4"
  location 			= "${var.location}"
  resource_group_name 		= "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation 	= "static"

  tags {
	group = "Coudera-Cluster"
  }
}

resource "azurerm_network_interface" "public_nic4" {
  name 			= "worker3_network_interface"
  location 		= "${var.location}"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_cluster.id}"

  ip_configuration {
    name 			= "worker3_ip"
    subnet_id 			= "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id	= "${azurerm_public_ip.worker3_pip.id}"
  }
  tags {
	group = "Coudera-Cluster"
  }
}
