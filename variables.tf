variable "region" {
  type = string
}

variable "profile" {
  type = string
}

#####################################################################
################### Network Variable Declaration ####################
#####################################################################
variable "vpc_cidr" {
  description = "vpc cidr range"
  type = string
}

variable "subnets_cidr" {
  description = "subnet cidr ranges"
  type = list(string)
}