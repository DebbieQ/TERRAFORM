resource "aws_route53_zone" "main" {
  name     = "example.com"
}

#aws route53 name server
#aws provides a default name server with the name of the zone you created.You can overwrite it to give it your own nameserver
resource "aws_route53_record" "nameserver" {
  allow_overwrite = true
  name            = "example.com"
  ttl             = 3600
  type            = "NS"
  zone_id         = aws_route53_zone.main.zone_id

  records = aws_route53_zone.main.name_servers
}