variable availability_zone {}
variable "vpc_cidr" {}
variable "subnet_public_cidr" {}
variable "subnet_private_cidr" {}
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
