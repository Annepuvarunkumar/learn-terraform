module "components" {

    for_each            = var.components

    source              = "./module"
    zone_id             = "var.zone_id"
    security_group      = "var.security_group"
    name                = each.vale["name"]
    instance_type       = each.vale["instance_type"]

}

