variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "env_name" {
  type    = string
  default = "dev"
}

variable "identifier" {
  type = string
}

variable "partition_count" {
  type    = number
  default = 2
}

variable "message_retention" {
  type    = number
  default = 1
}

variable "capacity" {
  type    = number
  default = 1
}

variable "sku" {
  type    = string
  default = "Standard"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = ""
  }
}
