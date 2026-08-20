variable "environment_name" {
  description = "Environment to deploy into"
  type        = string
  default     = "DEFAULT_TARGET"
}

# variable "aws_access_key_id" {
#   type        = string
#   ephemeral   = true
# }

# variable "aws_secret_access_key" {
#   type        = string
#   ephemeral   = true
#   sensitive   = true
# }

# variable "aws_session_token" {
#   type        = string
#   ephemeral   = true
#   sensitive   = true
# }