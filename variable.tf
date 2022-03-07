
variable "ami" {
  type    = string
  default = "ami-060c4f2d72966500a"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "name" {
  type    = string
  default = "web-Project-1"
}
variable "python3" {
  type    = string
  default = "Python3-Project-1"
}

variable "environment" {
  type    = string
  default = "education"
}

variable "owner" {
  type    = string
  default = "Mr Kay"
}
