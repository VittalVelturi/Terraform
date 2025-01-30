#Provides all the attribute of an ec2 instance
output "ami" {
  value = aws_instance.ec2_Hardcoding.ami
}
output "arn" {
  value = aws_instance.ec2_Hardcoding.arn
}
output "instance_state" {
  value = aws_instance.ec2_Hardcoding.instance_state
}
output "primary_network_interface_id" {
  value = aws_instance.ec2_Hardcoding.primary_network_interface_id
}
output "private_ip" {
  value = aws_instance.ec2_Hardcoding.private_ip
}
output "private_dns" {
  value = aws_instance.ec2_Hardcoding.private_dns
}
output "public_dns" {
  value = aws_instance.ec2_Hardcoding.public_dns
}
output "public_ip" {
  value = aws_instance.ec2_Hardcoding.public_ip
}
output "EBS_Volume_id" {
  value = aws_instance.ec2_Hardcoding.root_block_device[0].volume_id
}
output "EBS_Volume_Size" {
  value = aws_instance.ec2_Hardcoding.root_block_device[0].volume_size
}
output "EBS_Volume_type" {
  value = aws_instance.ec2_Hardcoding.root_block_device[0].volume_type
}
output "EBS_Volume_Device" {
  value = aws_instance.ec2_Hardcoding.root_block_device[0].device_name
}