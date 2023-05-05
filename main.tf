data "azurerm_client_config" "current" {}

data "azurerm_subscription" "current" {}

resource "vault_auth_backend" "azure" {
  type = "azure"
}

resource "vault_azure_auth_backend_config" "azure_auth_config" {
  backend   = vault_auth_backend.azure.path
  tenant_id = data.azurerm_client_config.current.tenant_id
  resource  = "https://management.azure.com/"
}

resource "vault_policy" "azure-policy" {
  name   = var.azure_policy_name
  policy = <<EOT
  path "azure/creds/Hashicorp-Vault" {
      capabilities = ["read"]
  }
EOT
}

resource "vault_azure_auth_backend_role" "azure-role" {
  backend                 = vault_auth_backend.azure.path
  role                    = var.auth_azure_role
  bound_subscription_ids  = [data.azurerm_subscription.current.subscription_id]
  token_ttl               = 600
  token_max_ttl           = 1800
  token_policies          = [vault_policy.azure-policy.name]
  token_no_default_policy = true
  token_num_uses          = var.num_of_token_usage
}

resource "vault_azure_secret_backend" "azure" {
  subscription_id = data.azurerm_subscription.current.subscription_id
  tenant_id       = data.azurerm_client_config.current.tenant_id
}

resource "vault_azure_secret_backend_role" "azure-object" {
  backend               = vault_azure_secret_backend.azure.path
  role                  = "Hashicorp-Vault"
  application_object_id = var.app_object_id
  ttl                   = 600
  max_ttl               = 1800
}