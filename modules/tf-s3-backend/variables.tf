variable "bucket_name" {
  description = "The name of the S3 bucket."
  type = string
}

variable "table_name" {
  description = "The name of the DynamoDB table."
  type = string
}

variable "table_billing_mode" {
  description = "The billing mode to use for the DynamoDB table."
  type = string
  default = "PROVISIONED"
}

variable "table_write_capacity" {
  description = "The write capacity for the DynamoDB table."
  type = number
  default = 25
}

variable "table_read_capacity" {
  description = "The read capacity for the DynamoDB table."
  type = number
  default = 25
}

variable "tags" {
  description = "The tags to apply to this backend."
  type = map(string)
  default = {}
}
