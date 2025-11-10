terraform {
  required_version = ">= 1.0"
}

# Simple local file resource - no cloud provider needed
resource "local_file" "config" {
  filename = "${path.module}/output/config.txt"
  content = <<-EOT
    Application: AZFUNCHOSTING
    Environment: ${var.environment}
    Created: ${timestamp()}
    Branch: ${var.branch_name}
    Last Updated by: ${var.last_updated_by}
  EOT
}

# Another example - random ID generator
resource "random_id" "app_id" {
  byte_length = 4
}

resource "local_file" "app_info" {
  filename = "${path.module}/output/app-info.json"
  content = jsonencode({
    app_name    = "AZFUNCHOSTING"
    app_id      = random_id.app_id.hex
    environment = var.environment
    version     = var.app_version
    created_at  = timestamp()
  })
}

# Output values
output "config_file_path" {
  value = local_file.config.filename
}

output "app_id" {
  value = random_id.app_id.hex
}

output "generated_files" {
  value = [
    local_file.config.filename,
    local_file.app_info.filename
  ]
}
