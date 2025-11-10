variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-azfunc-hosting"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "stazfunchosting"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "asp-azfunc-hosting"
}

variable "function_app_name" {
  description = "Name of the Function App"
  type        = string
  default     = "func-azfunc-hosting"
}
