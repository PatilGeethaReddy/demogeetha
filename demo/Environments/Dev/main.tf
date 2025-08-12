module "dev"{
    source = "../../Modules/Route53"
    region = var.region
    record_name = var.record_name
    domain_name = var.domain_name
    record_type = var.record_type
    record_ttl = var.record_ttl

    

}