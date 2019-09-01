provider "aws" {
  region = "us-east-1"
  access_key = "AKIARA7CIJ3UH62AGGFY"
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

