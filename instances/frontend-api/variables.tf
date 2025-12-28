variable "frontend_subnet_id" {
  description = "ID of the frontend subnet for Employee Frontend"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
}

variable "sg_id" {
  description = "Security Group ID to attach to frontend EC2"
  type        = string
}
