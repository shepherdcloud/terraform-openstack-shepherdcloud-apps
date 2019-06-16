variable "project_name" {
  type        = "string"
  description = "The name of the project. it will be used as preffix for most resource"
}

variable "project_router_id" {
  type        = "string"
  description = "The Id of the project router"
}

variable "network_description" {
  type        = "string"
  description = "The network dedicated to CICD"
  default     = "The network dedicated to CICD"
}