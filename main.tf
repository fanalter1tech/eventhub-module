resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_eventhub_namespace" "this" {
  name                = "namespace-${var.identifier}-${var.env_name}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku                 = var.sku
  capacity            = var.capacity

  tags = var.tags
}

resource "azurerm_eventhub" "this" {
  name                = "${var.identifier}-${var.env_name}"
  namespace_name      = azurerm_eventhub_namespace.this.name
  resource_group_name = azurerm_resource_group.this.name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}
