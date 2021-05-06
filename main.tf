provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_ebs_volume" "k" {
  availability_zone = var.ebs_region
  size              = 2
  tags = {
    Name = "my_volume"
  }
}

resource "aws_instance" "p" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "production"
  }
}

resource "aws_volume_attachment" "vol" {
  device_name = var.device
  volume_id   = var.vol
  instance_id = var.id
}

resource "aws_ebs_snapshot" "snap" {
  volume_id = var.vol
  tags = {
    Name = "my_new_snap"
  }
}

resource "aws_ami_from_instance" "ami" {
  name               = "my_ami"
  source_instance_id = var.id
  tags = {
    Name = "my_ami"
  }
}