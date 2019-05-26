# variables
variable "AWS_REGION" {
  default = "ap-southeast-1"
}

variable "INSTANCE_COUNT" {
  description = "Define how many instance to launch"
  default = "4"
}

variable "EC2_TYPE" {
  default = "t3.medium"
}

variable "AMI_ID" {
  description = "Using Ubuntu 18.04 64-bit x86, ap-southeast-1"
  default = "ami-005bdb005fb00e791"
}

variable "KEYPAIR" {
  default = "myprivatekey.pem"
}

variable "AWS_SUBNET" {
  description = "Using existing Subnet"
  default = "subnet-xxxxxxxxxxx"
}

variable "SECURITY_GROUP_1" {
  description = "Using existing security group"
  default = "sg-xxxxxxxxxxxxx"
}

variable "SECURITY_GROUP_2" {
  description = "Using existing security group"
  default = "sg-xxxxxxxxxxxxxx"
}

variable "ROOT_VOLUME_SIZE" {
  description = "Define root Block Devices #1"
  default = "10"
}

#variable "EBS_VOLUME_1_SIZE" {
#  description = "Define Additional Block Devices #1"
#  default = "120"
#}

#variable "EBS_VOLUME_1_AZ" {
#  description = "Availability Zone for Volume_1 Block Device (EBS)"
#  default = "ca-central-1a"
#}

#variable "EBS_VOLUME_1_NAME" {
#  default = "xxxxxxx"
#}

variable "TF_STATE_S3_KEY" {
  default = "terraform.tfstate"
}