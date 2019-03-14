variable "vpc_id" {}

variable "name_prefix" {
  description = "The prefix for the resource names. You will probably want to set this to the name of your VPC, if you have multiple."
  default     = "vpc"
}

variable "traffic_type" {
  default     = "ALL"
  description = "The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL"
}

// workaround for not being able to do interpolation in variable defaults
// https://github.com/hashicorp/terraform/issues/4084
locals {
  default_log_destination = "${var.name_prefix}-flow-log"
}

variable "log_destination" {
  default     = ""
  description = "Defaults to `$${default_log_destination}`"
}
