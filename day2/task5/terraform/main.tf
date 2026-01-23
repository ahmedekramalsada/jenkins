provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (Double check region)
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-IAAC-Demo"
  }
}

output "public_ip" {
  value = aws_instance.web_server.public_ip
}
