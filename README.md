## Terraform module for setting up AWS VPC flow logs

## Usage

```hcl
module "vpc" {
  source = "github.com/leandevops/terraform-aws-vpc//module?ref=v1.1.0"

  name     = "example-vpc"
  region   = "us-east-1"
  vpc_cidr = "10.0.0.0/16"

  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.10.0/24", "10.0.20.0/24"]

  enable_dhcp_options      = true
  dhcp_options_domain_name = "leandevops.io"

  map_public_ip_on_launch = true
  enable_nat_gateway      = true
  multi_nat_gateway       = false

  enable_s3_endpoint      = true
  tags = {
      createdWith = "terraform"
      environment = "development"
  }
}

module "flow_logs" {
  source = "github.com/leandevops/terraform-aws-vpc-flowlog//module"
  vpc_id = "${module.vpc.vpc_id}"
}

```

See the optional variables [variables.tf](variables.tf)

## Dependecies

This module depends on [terraform-aws-vpc](https://github.com/leandevops/terraform-aws-vpc) module.

## Author
Created and maintained by [leandevops](https://github.com/leandevops)
