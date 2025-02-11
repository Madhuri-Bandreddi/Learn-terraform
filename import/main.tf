resource "aws_instance" "workstation" {
  #ami           = "ami-0b5a2b5b8f2be4ec2"
  ami            = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags   = {
    "Name" = "workstation"
  }
}

output "private_ip" {
  value = aws_instance.workstation.private_ip
}

