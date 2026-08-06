variable "ami_id" {
  default = "ami-02b64aa047cb5edf5"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "instance_name" {
  default = "learn-terraform"
}

resource "aws_instance" "ram_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
