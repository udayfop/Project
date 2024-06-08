module "vpc_us_east_1" {
  source = "./modules/vpc" 
  providers = {
    aws = aws.us_east_1
  }
  region = var.region_us_east_1
}
#
module "vpc_us_east_2" {
  source = "./modules/vpc"
  providers = {
    aws = aws.us_east_2
  }
  region = var.region_us_east_2
}

module "instance_us_east_1" {
  source = "./modules/instance"
  providers = {
    aws = aws.us_east_1
  }
  region    = var.region_us_east_1
  subnet_id = module.vpc_us_east_1.subnet_id
}

module "instance_us_east_2" {
  source = "./modules/instance"
  providers = {
    aws = aws.us_east_2
  }
  region    = var.region_us_east_2
  subnet_id = module.vpc_us_east_2.subnet_id
}
