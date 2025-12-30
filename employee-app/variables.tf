variable "app_name" {
  default = "employee-app"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  default = "ami-09ecd31573861d7a9"
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
