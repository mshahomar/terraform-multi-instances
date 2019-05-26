#resource "aws_ebs_volume" "ebs_volume_home" {
#  availability_zone = "${var.EBS_VOLUME_1_AZ}"
#  size = "${var.EBS_VOLUME_1_SIZE}"
#  count = "${var.INSTANCE_COUNT}"
#  type = "gp2"
#  tags {
#    Name = "${element(aws_instance.my-instance.*.id, count.index)}"
#    #Name = "${var.my-additional-volume}"
#  }
#}

#resource "aws_volume_attachment" "ebs_volume_home_map" {
#  count = "${var.INSTANCE_COUNT}"
#  device_name = "/dev/sdf"
#  volume_id = "${element(aws_ebs_volume.ebs_volume_home.*.id, count.index)}"
#  instance_id = "${element(aws_instance.my-instance.*.id, count.index)}"
#  skip_destroy = true
#}