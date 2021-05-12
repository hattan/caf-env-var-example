locals {
  envs = merge(
    var.envs,
    {
      custom_rg_name             = var.custom_rg_name
    }
  )

  resource_groups = merge(
    var.resource_groups,
    {
      custom = {
        name = local.envs.custom_rg_name
        tags = {
          level = "level1"
        }
      }
    }
  )
}
