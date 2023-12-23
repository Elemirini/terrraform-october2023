
 
 resource "aws_instance" "web2" {
  ami           ="ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  key_name = aws_key_pair.computer-key.key-name
  vpc_security_group_ids = [aws_security_group.elemirsg.id]

  tags = {
    Name = "ElemirEC2"
 }
 }
