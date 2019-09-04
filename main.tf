provider "aws" {
  region = "us-east-1"
  access_key = "AKIA32RXA34DUXIBTMUR"
  secret_key = "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"
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

