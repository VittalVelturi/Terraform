variable "region" {
  description = "This determines the region where the respective instance needs to be created"
  type        = string
  default     = "ap-south-1"
}
variable "instance_type" {
  description = "AMI of Amazon linux Ec2 instance"
  type        = string
  default     = "t2.micro"
}
variable "bool_true" {
  description = "AMI of Amazon linux Ec2 instance"
  type        = bool
  default     = true
}
variable "Key_pair" {
  description = "Keypair of the region"
  type        = string
  default     = "AWSLinuxKeypem"
}
variable "subnet" {
  description = "This is a public subnet"
  type        = string
  default     = "subnet-0d0572dd4a9166123"
}
variable "sg" {
  description = "Security group of Ec2 instance"
  type        = string
  default     = "sg-0dcbf1cfb1cae662a"
}
variable "ebs_type" {
  description = "Volume type of EBS"
  type        = string
  default     = "gp3"
}
variable "ebs_size" {
  description = "Volume size of ebs"
  type        = number
  default     = 8
}
variable "projectname" {
  description = "Name of Ec2 instance"
  type        = string
  default     = "Ec2DSBackupS3"
}
