output "instance_private_ip" {
  description = "my private ip"
  value       = aws_instance.p.private_ip
}

output "instance_public_ip" {
  description = "my public ip"
  value       = aws_instance.p.public_ip
}

output "instance_private_dns" {
  description = "my public dns"
  value       = aws_instance.p.private_dns
}

output "instance_public_dns" {
  description = "my private dns"
  value       = aws_instance.p.public_dns
}