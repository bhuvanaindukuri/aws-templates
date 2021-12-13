output "instance_id" {
    description = "Id of the created EC2 instance"
    value = aws_instance.app_server.id
}

output "instance_public_ip" {
    description = "Public IP of the created EC2 instance"
    value = aws_instance.app_server.public_ip
}
