module "vpc"{
    source = "./modules/vpc"
    theme  = var.theme
    enable_public_ip = var.enable_public_ip
    cidr_block = var.cidr_block

}

module "ec2" {
    source           = "./modules/ec2"
    instance_type    = var.instance_type
    enable_public_ip = var.enable_public_ip  
    theme            = var.theme
    #subnet_id        = module.VPC_Subnets.subnet_id
    subnet_id         = module.vpc.subnet_id
    #subnet_id         = module.VPC_Subnets.subnet_id
    security_group_id = module.vpc.security_group_id

    depends_on = [module.vpc]
}

