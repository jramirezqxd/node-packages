resource "aws_instance" "app_server" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name     = var.keyname
  vpc_security_group_ids = [aws_security_group.ssh_allow_test.id]

  tags = {
    Name = var.instance_name
  }
}
