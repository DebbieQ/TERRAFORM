
variable "environment" {
  description = "Deployment Environment"
  default = myenvironment
}

variable "public_subnet_cidr" {
 type        = string
 description = "Public Subnet CIDR values"
 default     = "10.0.1.0/24"
}
 
variable "private_subnet_cidr" {
 type        = string
 description = "Private Subnet CIDR values"
 default     = "10.0.2.0/24"
}
 
variable "vpc_cidr" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.0/16"
}
variable "availability_zone" {
  type        = string
  description = "Availability Zone"
  default     = "us-east-1"
}
