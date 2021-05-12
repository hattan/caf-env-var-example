# CAF Environment Variable Example

This example illustrates how to take an TF_VAR_ environment variable and add it to a CAF configuration.

Let's stay with setting an env var in your current shell `export TF_VAR_custom_rg_name="testaaa"`

The [variables.env.tf](variables.env.tf) file has an envs variable and one specific for custom_rg_name . Any other additional values would go into a simple input variable.

The [local.env.tf](local.env.tf) file contains a mapping of environment variables and any objects that would consume them. In this case, I'm creating a 
local.resource_groups, merging in var.resource_groups and any environment variable changes.
