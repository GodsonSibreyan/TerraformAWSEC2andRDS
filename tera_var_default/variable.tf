#variable "region" {
 # description = "AWS region"
#}
#variable "access_key" {
#  description = "AWS access_key "
#}

#variable "secret_key" {
#  description = "AWS secret_key"
#}
#variable "aws_availability_zone"{
#default = "ap-south-1a"
#type="string"
#description = "AWS availability_zone"
#}
variable "region" {
description = "AWS region"
}
variable "access_key" {
description = "AWS access_key "
}
variable "secret_key" {
description = "AWS secret_key"
}
variable "image_id" {
description = "AWS image_id"
}
variable "db_name" {
description = "RDS db_name"
}
variable "db_username" {
description = "RDS db_username"
}
variable "db_password" {
description = "RDS db_password"
}
variable "availability_zone" {
description = "AWS availability_zone"
}
variable "instance_type" {
description = "AWS instance_type"
}
variable "rds_instance_identifier_name" {
description = "RDS instance_identifier_name"
}
variable "rds_cluster_identifier_name" {
description = "RDS cluster_identifier_name"
}
