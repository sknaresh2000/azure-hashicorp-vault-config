variable "azure_policy_name" {
  type        = string
  description = "The name of the policy to be created in HashiCorp Vault"
  default     = "azure-policy"
}

variable "auth_azure_role" {
  type        = string
  description = "The name of the role to be created for azure authentication method"
  default     = "azure-dev"
}

variable "app_object_id" {
  type        = string
  description = "The application object id that will be managed by HashiCorp Vault."
}