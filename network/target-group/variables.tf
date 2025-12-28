variable "vpc_id" {
  description = "VPC ID where target group will be created"
  type        = string
}

variable "target_group_name" {
  description = "Name for the target group"
  type        = string
}

variable "port" {
  description = "Port for the target group"
  type        = number
  default     = 8080
}

variable "protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "health_check_path" {
  description = "Health check path for the target group"
  type        = string
  default     = "/health"
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
