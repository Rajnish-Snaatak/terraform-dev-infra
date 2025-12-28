variable "frontend_subnet_id" {
  description = "Subnet ID for the frontend instances"
  type        = string
}

variable "sg_id" {
  description = "Security group ID for frontend instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "application" {
  description = "Application name for tags"
  type        = string
}

variable "owner" {
  description = "Owner name for tags"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, prod, etc.)"
  type        = string
}

variable "cost_center" {
  description = "Cost center for tags"
  type        = string
}
