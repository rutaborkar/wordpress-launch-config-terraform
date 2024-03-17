# Data source to get information about the EC2 instance
data "aws_instance" "ec2_instance" {
  instance_id = var.instance_id
}

# Resource to create an AMI from the EC2 instance
resource "aws_ami_from_instance" "ec2_ami" {
  source_instance_id = data.aws_instance.ec2_instance.id
  name               = "NewAMI"
}

# Resource to create a launch configuration using the AMI
resource "aws_launch_configuration" "new_launch_configuration" {
  name_prefix                 = "new-launch-config-"
  image_id                    = aws_ami_from_instance.ec2_ami.id
  instance_type               = "t2.micro"
  # Add other configuration parameters as needed
}

