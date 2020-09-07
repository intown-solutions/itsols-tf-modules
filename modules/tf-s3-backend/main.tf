resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "table" {
  name = var.table_name
  hash_key = "hk"
  range_key = "rk"
  billing_mode = var.table_billing_mode
  write_capacity = var.table_write_capacity
  read_capacity = var.table_read_capacity

  server_side_encryption {
    enabled = true
  }

  attribute {
    name = "hk"
    type = "S"
  }

  attribute {
    name = "rk"
    type = "S"
  }

  tags = var.tags
}
