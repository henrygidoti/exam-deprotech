variable "log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
}

variable "retention_days" {
  description = "Number of days to retain logs"
  type        = number
  default     = 30
}