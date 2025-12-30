variable "app_name" {
  default = "notification-app"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI for notification service"
  type        = string
  default     = "ami-042d81395dfc502e7"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "OTMS-notify-tf"
}

variable "desired_capacity" {
  default = 1
}

variable "max_size" {
  default = 2
}

variable "min_size" {
  default = 1
}
