variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "eu-west-2"
}

variable "availability_zone" {
    description = "availability zone for instances"
    default = "eu-west-2a"
}

variable "ami" {
  default = "ami-dff017b8"
}

variable "nat_ami" {
  description = "eu-west-2 NAT ami"
  default     = "ami-87312ae3"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default     = "10.0.2.0/24"
}

