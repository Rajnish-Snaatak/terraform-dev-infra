variable "asg_name" {
  description = "Name of the existing Auto Scaling Group"
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
