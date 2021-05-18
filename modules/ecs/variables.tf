variable "name" {}
variable "environment" {}
variable "container_image" {}
variable "container_environment" {}
variable "container_port" {
  type = number
}
variable "pub_subnets" {}
variable "priv_subnets" {}
variable "health_check_path" {
  type = string
}
variable "vpc_id" {}

