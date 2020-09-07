variable "name" {
  description = "The domain name. For example, example.com."
  type = string
}

variable "tags" {
  description = "Tags to set on the zone."
  type = map(string)
  default = {}
}
