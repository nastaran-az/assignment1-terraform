resource "aws_instance" "app_ec2" {
  ami                         = data.aws_ami.al2023.id
  instance_type               = "t3.micro"
  subnet_id                   = local.subnet_id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  iam_instance_profile = var.ec2_instance_profile_name

  tags = {
    Name = "${var.name_prefix}-ec2"
  }
}
