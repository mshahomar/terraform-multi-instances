# instance.tf
data "template_file" "server_userdata" {
  template = "${file("server-user_data.tpl")}"
}

resource "aws_instance" "myubuntu" {
  count = "${var.INSTANCE_COUNT}"
  ami = "${var.AMI_ID}"
  instance_type = "${var.EC2_TYPE}"
  subnet_id = "${var.AWS_SUBNET}"
  key_name = "${var.KEYPAIR}"
  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.ROOT_VOLUME_SIZE}"
  }
  security_groups = ["${var.SECURITY_GROUP_1}", "${var.SECURITY_GROUP_2}"]
  user_data = "${data.template_file.server_userdata.rendered}"
  tags {
    Name = "${local.project_name}-0${count.index + 1}"
  }
}

output "ec2_private_ip" {
  value = "${aws_instance.myubuntu.*.private_ip}"
}