#########################################################
# S3 Backend
#########################################################

terraform {
  backend "s3" {
    bucket = "var.bucket"
    key    = "var.key"
    region = "var.region"
   }
}


#########################################################
# Network Module
#########################################################

module "networking" {
  source                = "./modules/network/"
  region                = "${var.region}"
  environment           = "${var.environment}"
  vpc_cidr              = "${var.vpc_cidr}"
  public_subnets_cidr   = "${var.public_subnets_cidr}"
  private_subnets_cidr  = "${var.private_subnets_cidr}"
  availability_zones    = "${var.availability_zones}"
}

#########################################################
# ECS Module
#########################################################

module "ecs" {
  source                    = "./modules/ecs/"
  name                      = "${var.name}"
  environment               = "${var.environment}"
  vpc_id                    = module.networking.vpc_id
  container_image           = "${var.container_image}"
  container_environment     = "${var.container_environment}"
  container_port            = "${var.container_port}"
  public_subnets            = module.networking.public_subnet_id
  private_subnets           = module.networking.private_subnet_id
  health_check_path         = "${var.health_check_path}"
}

