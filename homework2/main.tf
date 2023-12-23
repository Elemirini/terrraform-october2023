
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  availability_zone = "us-east-2b"
  key_name = aws_key_pair.homework.key_name
  user_data = file("apache.sh")
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Hello World"
  }
  
}
