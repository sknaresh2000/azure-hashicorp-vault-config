## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.47.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | =3.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.47.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_auth_backend.azure](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/auth_backend) | resource |
| [vault_azure_auth_backend_config.azure_auth_config](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/azure_auth_backend_config) | resource |
| [vault_azure_auth_backend_role.azure-role](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/azure_auth_backend_role) | resource |
| [vault_azure_secret_backend.azure](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/azure_secret_backend) | resource |
| [vault_azure_secret_backend_role.azure-object](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/azure_secret_backend_role) | resource |
| [vault_policy.azure-policy](https://registry.terraform.io/providers/hashicorp/vault/3.15.0/docs/resources/policy) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/data-sources/client_config) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.47.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_object_id"></a> [app\_object\_id](#input\_app\_object\_id) | The application object id that will be managed by HashiCorp Vault. | `string` | n/a | yes |
| <a name="input_auth_azure_role"></a> [auth\_azure\_role](#input\_auth\_azure\_role) | The name of the role to be created for azure authentication method | `string` | `"azure-dev"` | no |
| <a name="input_azure_policy_name"></a> [azure\_policy\_name](#input\_azure\_policy\_name) | The name of the policy to be created in HashiCorp Vault | `string` | `"azure-policy"` | no |

## Outputs

No outputs.
