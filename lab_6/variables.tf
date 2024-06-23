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