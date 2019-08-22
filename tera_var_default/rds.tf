resource "aws_rds_cluster" "aurora_cluster" {

    cluster_identifier            = var.rds_cluster_identifier_name
    database_name                 = var.db_name
    master_username               = var.db_username
    master_password               = var.db_password
    backup_retention_period       = 7
    preferred_backup_window       = "02:00-03:00"
    vpc_security_group_ids        = ["${aws_security_group.rds_sg.id}"]
    skip_final_snapshot           = true
}

resource "aws_rds_cluster_instance" "aurora_cluster_instance" {

    availability_zone    =  var.availability_zone
    cluster_identifier    = "${aws_rds_cluster.aurora_cluster.id}"
    instance_class        = "db.t2.small"
    publicly_accessible   = true
    identifier            = var.rds_instance_identifier_name
}

################# RDS SECURITY GROUP ##################

resource "aws_security_group" "rds_sg" {
 name = "myrds-sg"
  description = "RDS Teraform MySQL Security Group"



 ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
   security_groups = ["${aws_security_group.web.id}"]
   }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


tags =  {
    Name = "TERRA_RDS_SG"
    }

}

