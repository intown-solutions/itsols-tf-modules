# Terraform S3 Backend

You can use S3 buckets as a backend for your Terraform configurations with locking capabilities provided by DynamoDB. This module creates an S3 bucket and a DynamoDb table for you. Both the bucket and the table have server side encryption enabled with the default KMS key for their respective services.

```hcl
provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

module "terraform_s3_backend" {
  source = "github.com/intown-solutions/itsols-tf-modules/tree/master/modules/tf-s3-backend"

  bucket_name = "bucket-name"
  table_name = "TableName"
}
```

## Variables

- **bucket_name** (Required) - The name of the S3 bucket.

- **table_name** (Required) - The name of the DynamoDB table.

- **table_billing_mode** - The billing mode for the DynamoDB table. Default is `PROVISIONED`.

- **table_write_capacity** - The write capacity for the DynamoDB table. Default is `25`.

- **table_read_capacity** - The read capacity for the DynamoDB table. Default is `25`.

- **tags** - Tags for AWS resources.

## Outputs

- **bucket_name** - The name of the S3 bucket.

- **table_name** - The name of the DynamoDB table.
