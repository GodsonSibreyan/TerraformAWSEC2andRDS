# Create an EC2 instance
resource "aws_instance" "web" {
  ami           = var.image_id
  instance_type = var.instance_type
  key_name = "${aws_key_pair.karthi.key_name}"
  availability_zone = var.availability_zone
  associate_public_ip_address = true
  #disable_api_termination = true
  security_groups = ["${aws_security_group.web.name}"]
  #source_dest_check = false  	

tags = {
    Name = "test"
    }
    }

resource "aws_eip" "web-1" {
instance = "${aws_instance.web.id}"
vpc = true
  tags = {
    Name = "test instance ip"
    }
}
