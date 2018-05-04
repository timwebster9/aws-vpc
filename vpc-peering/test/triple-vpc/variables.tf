variable availability_zone_a {}
variable availability_zone_b {}
variable availability_zone_c {}
variable "vpc_a_cidr" {}
variable "vpc_b_cidr" {}
variable "vpc_c_cidr" {}
variable "subnet_a_cidr" {}
variable "subnet_b_cidr" {}
variable "subnet_c_cidr" {}
variable "ami_name" {}
variable "ami_owner" {}
variable "instance_type" {}
variable "keypair_name" {}
variable "region" {
  default     = "eu-west-2"
}

locals {
  myip = "${chomp(data.http.icanhazip.body)}"
}

