#Provides all the attribute of an ec2 instance
output "ami" {
  value = aws_instance.Ec2DSBackupS3.ami
}
output "arn" {
  value = aws_instance.Ec2DSBackupS3.arn
}
output "instance_state" {
  value = aws_instance.Ec2DSBackupS3.instance_state
}
output "primary_network_interface_id" {
  value = aws_instance.Ec2DSBackupS3.primary_network_interface_id
}
output "private_ip" {
  value = aws_instance.Ec2DSBackupS3.private_ip
}
output "private_dns" {
  value = aws_instance.Ec2DSBackupS3.private_dns
}
output "public_dns" {
  value = aws_instance.Ec2DSBackupS3.public_dns
}
output "public_ip" {
  value = aws_instance.Ec2DSBackupS3.public_ip
}
output "EBS_Volume_id" {
  value = aws_instance.Ec2DSBackupS3.root_block_device[0].volume_id
}
output "EBS_Volume_Size" {
  value = aws_instance.Ec2DSBackupS3.root_block_device[0].volume_size
}
output "EBS_Volume_type" {
  value = aws_instance.Ec2DSBackupS3.root_block_device[0].volume_type
}
output "EBS_Volume_Device" {
  value = aws_instance.Ec2DSBackupS3.root_block_device[0].device_name
}