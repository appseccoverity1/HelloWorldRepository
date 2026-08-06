resource "aws_instance" "ram_server" {
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro"

  tags = {
    Name = "var.learn-terraform"
  }
}
