resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list

  tags = {
    Name = "HelloTerraform"
  }


# aws_security_group

resource  "aws_security_group" "roboshop-all" {
    name = "roboshop-all-aws"
    description = "allow TLS inbound traffic "

}


# inbound rule

ingress  {
    description = "Allow all ports"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_block =["0.0.0.0/0"]
}

#outbound

egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]

}

tags = {
    Name = " roboshop-all-aws"

}

}