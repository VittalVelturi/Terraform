provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_Hardcoding" {
  ami                         = "ami-0ed194d7eff6d2f81" 
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "AWSLinuxKeypem"
  subnet_id = "subnet-0d0572dd4a9166123"
  vpc_security_group_ids = [ "sg-0dcbf1cfb1cae662a" ]
  root_block_device {
    volume_type = "gp3"
    volume_size = "8"
    delete_on_termination = true
  }
  tags = {
    "Name" = "ec2_Hardcoding"
  }
}