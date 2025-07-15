resource "aws_security_group" "dove-sg" {
  name        = "dove-sg"
  description = "dove-Security-Group"
  tags = {
    Name = "dove-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_from_my_ip" {
  security_group_id = aws_security_group.dove-sg.id
  cidr_ipv4         = "93.172.211.164/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.dove-sg.id
  cidr_ipv4         = "93.172.211.164/32"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_outbound_ipv4" {
  security_group_id = aws_security_group.dove-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_outbound_ipv6" {
  security_group_id = aws_security_group.dove-sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}