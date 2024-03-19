variable "instance_id" {
  description = "The ID of the EC2 instance to create an AMI from"
}
variable "location" {
  type        = string
  description = "The AWS region to use to create resources."
  default     = "us-east-2"
}

