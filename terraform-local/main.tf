variable "project_name" {
  type    = string
  default = "CSPM"
}

resource "terraform_data" "project" {
  input = var.project_name
}

output "project_name" {
  value = terraform_data.project.output
}