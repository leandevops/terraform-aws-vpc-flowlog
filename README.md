## Terraform module for setting up AWS VPC flow logs

## Usage

```hcl
module "flow_logs" {
  source = "../aws-vpc-flow-log"
  vpc_id = "${aws_vpc.main.id}"
}
```

See the optional variables [variables.tf](variables.tf)

## Dependecies

This module depends on [terraform-aws-vpc](https://github.com/leandevops/terraform-aws-vpc) module.

## Author
Created and maintained by [leandevops](https://github.com/leandevops)
