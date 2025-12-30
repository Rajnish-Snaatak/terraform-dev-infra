variable "app_name" {
  default = "frontend-app"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  default = "ami-03cc4e5014964f57f"
}

variable "key_name" {
  default = "Dev-OTMS-Terraform"
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
