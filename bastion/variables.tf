variable "ami_id" {
  description = "Ubuntu AMI ID"
  default     = "ami-0ecb62995f68bb549" # Ubuntu 22.04
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "Dev-OTMS-Terraform"
}

variable "allowed_ssh_cidr" {
  description = "Your public IP for SSH access"
  default     = "0.0.0.0/0" # replace with your IP for security
}
