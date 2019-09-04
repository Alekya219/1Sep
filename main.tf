provider "aws" {
  region = "us-east-1"
  access_key = "**************"
  secret_key = "****************************"
}

# Create EC2 instance
resource "aws_instance" "default" {
  ami                    = "${var.ami}"
  count                  = "${var.count}"
 # key_name               = "${var.key_name}"
  source_dest_check      = false
  instance_type          = "${var.instance_type}"

  tags {
    Name = "terraform-default"
  }
}

