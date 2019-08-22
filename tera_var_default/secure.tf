##Defining security group for Web

    resource "aws_security_group" "web" {
    name = "terraform security group"
    description = "Accept incoming and ougoing connections."

    ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
   ingress {
    from_port = 20
    to_port = 21
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    from_port = 13000
    to_port = 13100
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
     egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
   # vpc_id = "${aws_vpc.myVpc.id}"

    tags =  {
    Name = "terraform"
    }
    }

