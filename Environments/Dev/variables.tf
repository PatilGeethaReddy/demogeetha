variable "region" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "record_name" {
  type = list(string)
}
variable "record_type" {
  type = string
}
variable "record_ttl" {
  type = number
}

