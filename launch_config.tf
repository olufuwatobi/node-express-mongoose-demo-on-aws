resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id      = data.aws_ami.ubuntu.id # Amazon Linux AMI 2018.03.0 (HVM)
  instance_type = "t2.micro"
  #   key_name      = var.key_name

  security_groups             = ["${aws_security_group.nodejs.id}"]
  associate_public_ip_address = true

  user_data = data.template_file.node.rendered

  lifecycle {
    create_before_destroy = true
  }
}