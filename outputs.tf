output "ssm_connect_commands" {
  description = "SSM connect commands for all instances"
  value = {
    web1 = "aws ssm start-session --target ${aws_instance.web1.id}"
    web2 = "aws ssm start-session --target ${aws_instance.web2.id}"
  }
}

output "alb_dns_name" {
  description = "DNS name of the load balancer"
  value       = aws_lb.app_lb.dns_name
}