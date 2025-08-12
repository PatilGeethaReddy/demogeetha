data "aws_route53_zone" "selected" {
  name         = var.domain_name
  private_zone = true
}
resource "aws_route53_record" "www" {
  for_each = var.record_name
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "${each.value}.${data.aws_route53_zone.selected.name}"
  type    = var.record_type
  ttl     = var.record_ttl
  records = [aws_lb.my_lb.dns_name]
}