module "gateway-endpoint" {
    source              = "../../modules/gateway-endpoint"
    availability_zone   = "${var.availability_zone}"
    vpc_cidr            = "${var.vpc_cidr}"
    subnet_public_cidr  = "${var.subnet_public_cidr}"
    subnet_private_cidr = "${var.subnet_private_cidr}"
    ami_name            = "${var.ami_name}"
    ami_owner           = "${var.ami_owner}"
    instance_type       = "${var.instance_type}"
    keypair_name        = "${var.keypair_name}"
    myip                = "${local.myip}"
}