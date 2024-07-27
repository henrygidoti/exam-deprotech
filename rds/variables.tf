variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
}

variable "engine_type" {
  description = "The database engine to use"
  type        = string
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_username" {
  description = "Master username for the database"
  type        = string
}

variable "db_password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true # Mark as sensitive to hide output
}

variable "allocated_storage" {
  description = "Allocated storage in gigabytes"
  type        = number
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default = "postgres"
}

variable "port" {
  description = "The port for the database"
  type        = number
}