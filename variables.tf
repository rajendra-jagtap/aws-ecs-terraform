variable "region" {
  description = "AWS Deployment region.."
  default = "ap-south-1"
}
variable "bucket" {
  type = string
}
variable "key" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "environment" {}
variable "public_subnets_cidr" {}
variable "availability_zones" {}
variable "private_subnets_cidr" {}

variable "name" {}
variable "container_image" {}
variable "container_environment" {}
variable "container_port" {
  type = number
}
variable "health_check_path" {
  type = string
}
