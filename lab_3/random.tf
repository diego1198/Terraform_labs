resource "random_string" "preffix" {
  count   = 4
  length  = 8
  special = false
  upper   = false
  numeric = false
}