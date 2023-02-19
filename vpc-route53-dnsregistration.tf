resource "aws_route53_record" "app_dns" {
    zone_id = data.aws_route53_zone.mydomain.zone_id
    name    = "www.example.com"
    type    = "A"
    alias {
        name                   = module.alb.lb_dns_name
        zone_id                = module.alb.lb_zone_id
        evaluate_target_health = true
    }
}