resource "aws_security_group" "jenkins_sg" {

  name = "jenkins-sg"

  vpc_id = aws_vpc.devops_vpc.id
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {

  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
}
resource "aws_vpc_security_group_ingress_rule" "jenkins" {

  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port   = 8080
  to_port     = 8080
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "http" {

  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
}