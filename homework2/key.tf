resource "aws_key_pair" "homework" {
  key_name   = "homework-key"
  public_key =file("~/.ssh/id_rsa.pub")
}
# file("~/.ssh/id_rsa.pub")