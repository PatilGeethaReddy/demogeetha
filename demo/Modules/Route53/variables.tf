variable "region" {
  type = string
}
variable "zone_id" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "record_name" {
  type = set(string)
}
variable "record_type" {
  type = string
}
variable "record_ttl" {
  type = number
}

