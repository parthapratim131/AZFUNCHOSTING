variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "cev"
}

variable "branch_name" {
  description = "Name of the source branch"
  type        = string
  default     = "unknown"
}

variable "last_updated_by" {
  description = "Who made the last update"
  type        = string
  default     = "unknown"
}

variable "app_version" {
  description = "Application version"
  type        = string
  default     = "1.0.0"
}

variable "feature_toggle" {
  description = "Enable new features"
  type        = bool
  default     = true
}