resource "aws_launch_template" "launch_template" {
  name = "${var.name}"

  block_device_mappings {
    device_name = "${var.block_device_mappings_device_name}"
    ebs {
      volume_size = "${var.block_device_mappings_volume_size}",
      volume_type = "${var.block_device_mappings_volume_type}"
    }
  }

  iam_instance_profile {
    name = "${var.iam_instance_profile}"
  }

  monitoring {
    enabled = "${var.monitoring_enabled}"
  }

  image_id = "${var.image_id}"

  instance_type = "${var.instance_type}"

  key_name = "${var.key_name}"

  placement {
    availability_zone = "${var.placement_availability_zone}"
  }

  vpc_security_group_ids = "${var.vpc_security_group_ids}"

  tag_specifications {
    resource_type = "volume"
    tags {
      Name = "${var.instance_tag_name}"
      ENV = "${var.instance_tag_env}"
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags {
      Name = "${var.instance_tag_name}"
      ENV = "${var.instance_tag_env}"
    }
  }

  tags {
    Name = "${var.launch_template_tag_name}"
  }
  ##################################
  # data에 등록된 파일 로드
  ##################################
  user_data = "${base64encode(data.template_file.user_data.rendered)}"
}