variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "name_prefix" {
  type        = string
  description = "Prefix for resource names"
  default     = "clo835-a1"
}

variable "ec2_instance_profile_name" {
  type        = string
  description = "Existing IAM instance profile name (e.g., LabInstanceProfile)"
  default     = "LabInstanceProfile"
}
