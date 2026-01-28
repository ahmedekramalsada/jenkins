provider "aws" { region = "us-east-1" }

resource "aws_instance" "web_server" {
  ami           = "ami-0e1bed4f06a3b463d" # Ubuntu 22.04 AMI
  instance_type = "t2.micro"
  key_name      = "your-aws-key" # Change to your key name

  tags = { Name = "Jenkins-Ansible-Node" }
}
ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"] # Open temporarily to verify
}
output "public_ip" { value = aws_instance.web_server.public_ip }
