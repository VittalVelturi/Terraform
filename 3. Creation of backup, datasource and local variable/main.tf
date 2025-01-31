provider "aws" {
  region = var.region #Region where the respective instance needs to be created.clear

}
locals {
  environmentvariable = var.projectname
}
terraform {
  backend "s3" {
    bucket = "my-terra-bucket-vv"
    key    = "terraform/handson/statefile/terrafromstate.tf"
    region = "ap-south-1"
  }
}

resource "aws_instance" "Ec2DSBackupS3" {
  ami                         = data.aws_ami.ami.id #AMI of the EC2 Instance
  instance_type               = var.instance_type   # THe instance type of EC2
  associate_public_ip_address = var.bool_true       #assign public id to Ec2
  key_name                    = var.Key_pair        #key pair for ap-south-1
  subnet_id                   = var.subnet          #PPublic subnet
  vpc_security_group_ids      = [var.sg]            #security group for Ec2
  #The Elastic Block storage of Ec2 is determined below
  root_block_device {
    volume_type           = var.ebs_type
    volume_size           = var.ebs_size
    delete_on_termination = var.bool_true
  }
  # The below tag represents the EC2 instance name
  tags = {
    "Name" = local.environmentvariable
  }
}