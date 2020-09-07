# AWS Route 53 Public Hosted Zone

Creates a Route53 public hosted zone.

```hcl
provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

module "example_domain" {
  source = "github.com/intown-solutions/itsols-tf-modules/modules/aws-route53-public-hosted-zone"
  name = "example.com"
}
```

## Variables

- **name** (Required) - The domain. For example `example.com`.

- **tags** - The tags to attach to the hosted zone.

## Outputs

- **zone_id** - The id of the hosted zone.

- **name_servers** - The name servers of the hosted zone.
