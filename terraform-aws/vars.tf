variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "access_ip" {}

#-------database variables

variable "dbname" {
  type = string
}
variable "dbuser" {
  type = string
}
variable "dbpassword" {
  type      = string
  sensitive = true
}