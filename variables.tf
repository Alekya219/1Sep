
variable "key_name" {
  description = "Private key name to use with instance"
  default     = "Aug21"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "Base AMI to launch the instances"

  # Bitnami NGINX AMI
  default = "ami-0c322300a1dd5dc79"
}
