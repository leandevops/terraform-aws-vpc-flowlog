## This is a reusable Terraform module for setting up VPC flow logs

## Usage

```hcl
module "flow_logs" {
  source = "../aws-vpc-flow-log"
  vpc_id = "${aws_vpc.main.id}"
}
```

See the optional variables [variables.tf](variables.tf)

## Author
Created and maintained by [leandevops](https://github.com/leandevops)
