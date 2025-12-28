variable "alb_listener_arn" {
  description = "ARN of the ALB listener to attach rule"
  type        = string
}

variable "target_group_arn" {
  description = "ARN of the target group to forward traffic"
  type        = string
}

variable "path_pattern" {
  description = "Path pattern for routing rule (e.g., /frontend/*)"
  type        = string
}

variable "priority" {
  description = "Priority for the listener rule"
  type        = number
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
