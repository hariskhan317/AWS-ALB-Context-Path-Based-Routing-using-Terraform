data "aws_route53_zone" "mydomain" {
  name         = "mydevopsample.com." 
}
output "domain_zone_id" {
  value       = data.aws_route53_zone.mydomain.zone_id
  description = "My domain zone id"
}
