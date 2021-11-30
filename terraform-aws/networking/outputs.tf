# -- networking/outputs.tf

output "vpc_id" {
  value = aws_vpc.mtc_vpc.id

}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.mtc_rds_subnetgroup.*.name
}

output "db_security_group" {
  value = aws_security_group.mtc_sg["rds"].id
}

output "public_sg" {
  value = aws_security_group.mtc_sg["ssh"].id
}

output "tg_sg" {
  value = aws_security_group.mtc_sg["tg"].id
}

output "http_sg" {
  value = aws_security_group.mtc_sg["http"].id
}

output "public_subnets" {
  value = aws_subnet.mtc_pub_subnet.*.id
}