variable "app_name" {
  default = "salary-app"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI for salary service"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
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
