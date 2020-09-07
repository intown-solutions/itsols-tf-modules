output "zone_id" {
  description = "The id of the Route 53 hosted zone."
  value = aws_route53_zone.zone.zone_id
}

output "name_servers" {
  description = "The name servers of the Route 53 hosted zone."
  value = aws_route53_zone.zone.name_servers
}
