environment                 = "dev"
key_name                    = "keypair"
region                      = "ap-south-1"
bucket                      = "s3bucketname"
key                         = "terraform/dev/cluster.tfstate"

vpc_cidr                    = "192.168.0.0/20"
public_subnets_cidr         = ["192.168.2.0/24","192.168.3.0/24"]
private_subnets_cidr        = ["192.168.0.0/24","192.168.1.0/24"]
availability_zones          = ["ap-south-1a","ap-south-1b"]

name                        = "vt1"
container_image             = "nginx"
container_environment       = "dev"
container_port              = "80"
health_check_path           = "/"

