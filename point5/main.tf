provider "aws" {
  region = "us-east-1"
}

# 1. Create a Security Group to allow SSH and HTTP
resource "aws_security_group" "jenkins_lab_sg" {
  name        = "jenkins_lab_sg"
  description = "Allow SSH and HTTP traffic"

  # SSH Access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP Access (for Nginx)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rules (allow the server to talk to the internet to download Nginx)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 2. Create the EC2 Instance and ATTACH the Security Group
resource "aws_instance" "web_server" {
  ami                    = "ami-0e1bed4f06a3b463d" # Ubuntu 22.04 AMI
  instance_type          = "t2.micro"
  key_name               = "your-aws-key" # <--- REPLACE WITH YOUR ACTUAL KEY NAME
  
  # This line connects the Security Group to the Instance
  vpc_security_group_ids = [aws_security_group.jenkins_lab_sg.id]

  tags = {
    Name = "Jenkins-Ansible-Node"
  }
}

# 3. Output the IP so Jenkins can read it
output "public_ip" {
  value = aws_instance.web_server.public_ip
}
