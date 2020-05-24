# TODO: Designate a cloud provider, region, and credentials


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2


# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "Udacity-T2" {
  ami           = "ami-06fcc1f0bc2c8943f"
  instance_type = "t2.micro"
  count         = 4
}

resource "aws_instance" "Udacity-M4" {
  ami           = "ami-06fcc1f0bc2c8943f"
  instance_type = "m4.large"
  count         = 2
}

resource "aws_vpc" "Udacity-VPC" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "Public-Subnet" {
  cidr_block = "10.0.0.0/16"
}
