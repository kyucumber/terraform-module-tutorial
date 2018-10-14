module "launch_template" {
  source = "modules/launch-template"
  
  name = "launch-template-kyunam-${uuid()}"

  iam_instance_profile = "ec2-aws-service"
  
  # block_device_mappigs
  block_device_mappings_device_name = "/dev/xvda"
  block_device_mappings_volume_size = 100
  block_device_mappings_volume_type = "gp2"

  # monitoring
  monitoring_enabled = true

  # ami image id
  image_id = "ami-0bb01e989e36b8ab5"

  instance_type = "t2.micro"

  key_name = "sre-kyunam-test"

  # placement
  placement_availability_zone = "ap-northeast-2"

  # security group ids
  vpc_security_group_ids = ["sg-7a16b512","sg-da3c9fb2"]
  
  # ec2 instance tag_specifications 
  instance_tag_name = "kyunam-ec2"
  instance_tag_env = "test"

  # launch template tag info
  launch_template_tag_name = "launch-template-kyunam"
}
