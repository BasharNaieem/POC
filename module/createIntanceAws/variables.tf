variable "region" {
  description = "The AWS region to deploy to."
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for SSH access."
  type        = string
}

variable "security_group_name" {
  description = "Name for the security group."
  type        = string
}

variable "user_data" {
  description = "Path to the user data script."
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance."
  type        = string
  default     = "Instance_new"
}
