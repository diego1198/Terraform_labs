variable "virginia_cidr" {
  description = "VIRGINIA_CIDR"
  type        = string
  sensitive   = true
}

variable "subnets" {
  description = "Subnet's list"
  type        = list(string)
}

variable "tags" {
  description = "Tags of resources"
  type        = map(string)
}

variable "inbound_cidr" {
  description = "list of ips allow to inbound traffic"
  type        = list(string)
}