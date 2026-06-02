resource "aws_instance" "jenkins_server" {

  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.medium"

  subnet_id = aws_subnet.public_subnet_1.id

  vpc_security_group_ids = [
    aws_security_group.jenkins_sg.id
  ]

  key_name = "Java_App"

  user_data = file("install_jenkins.sh")

  tags = {
    Name = "Jenkins-Server"
  }
} 