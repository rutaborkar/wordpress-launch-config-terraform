output "new_ami_id" {
  description = "ID of the newly created AMI"
  value       = aws_ami_from_instance.ec2_ami.id
}

