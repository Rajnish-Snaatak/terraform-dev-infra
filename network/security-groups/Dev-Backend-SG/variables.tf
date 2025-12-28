variable "vpc_id" {
  description = "VPC ID where SG will be created"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/18"
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "Dev-Backend-SG"
}
