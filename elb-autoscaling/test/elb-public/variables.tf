variable availability_zone_a {}
variable availability_zone_b {}
variable availability_zone_c {}
variable "vpc_cidr" {}
variable "subnet_a_cidr" {}
variable "subnet_b_cidr" {}
variable "subnet_c_cidr" {}
variable "ami_name" {}
variable "ami_owner" {}
variable "instance_type" {}
variable "keypair_name" {}
variable "lb_name_prefix" {}
variable "assign_public_ip" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}
variable "health_check_type" {}
variable "health_check_grace_period" {}
variable "region" {
  default     = "eu-west-2"
}

locals {
  myip = "${chomp(data.http.icanhazip.body)}"
}