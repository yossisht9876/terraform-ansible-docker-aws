variable "region" {
    default = "us-east-1"
}

variable "cred" {
    default = "/path_to_file/.aws/credentials"
}

variable "ami_id" {
  description = "The ID of the AMI to run"
  default     = "ami-074be0b88f292c5a9"
}


variable "key_name" {
    default = "yossi-test"
 }


variable "instance_type" {
  description = "The type of EC2 Instance to run"
  default     = "t2.micro"

}

variable "SG_type" {
  description = "The SG to attach to the instance "
  default = "sg-0bdb9f3266b9cc2ff"

}
