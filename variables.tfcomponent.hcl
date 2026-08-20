variable "environment_name" {
  description = "Environment to deploy into"
  type        = string
  default     = "DEFAULT_TARGET"
}

variable "aws_access_key_id" {
  type        = string
}

variable "aws_secret_access_key" {
  type        = string
}

variable "aws_session_token" {
  type        = string
}