variable "name" {
  description = "launch template name"
  type = "string"
}

variable "iam_instance_profile" {
  description = "iam instance profile"
  type = "string"
}

variable "block_device_mappings_device_name" {
  description = "block device name"
  type = "string"
}

variable "block_device_mappings_volume_size" {
  description = "block device volume size"
  type = "string"
}

variable "block_device_mappings_volume_type" {
  description = "block device volume type"
  type = "string"
}

variable "monitoring_enabled" {
  description = "monitoring enabled"
  type = "string"
}

variable "image_id" {
  description = "ami id"
  type = "string"
}

variable "instance_type" {
  description = "instance type"
  type = "string"
}

variable "key_name" {
  description = "key pair name"
  type = "string"
}

variable "placement_availability_zone" {
  description = "availability zone"
  type = "string"
}

variable "instance_tag_name" {
  description = "instance tag name"
  type = "string"
}

variable "instance_tag_env" {
  description = "instance tag env name"
  type = "string"
}

variable "launch_template_tag_name" {
  description = "launch template tag name"
  type = "string"
}

variable "vpc_security_group_ids" {
  description = "vpc security group ids"
  type = "list"
}