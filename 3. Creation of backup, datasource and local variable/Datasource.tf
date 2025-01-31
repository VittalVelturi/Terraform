data "aws_ami" "ami" {
  #executable_users = ["self"]
  most_recent = true
  #name_regex = "^myami-[0-9]{3}"
  #owners           = ["self"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}