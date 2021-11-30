# -- networking/vars.tf

variable "vpc_cidr" {
  type = string
}

variable "public_cidrs" {
  type = list(any)
}

variable "private_cidrs" {
  type = list(any)
}

variable "public_sub_count" {
  type = number
}

variable "private_sub_count" {
  type = number
}

variable "max_subnets" {
  type = number
}

variable "access_ip" {}

variable "security_groups" {}

variable "db_subnet_group" {}