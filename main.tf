provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "${var.cred}"
  profile = "terraform"
  
}


resource "aws_instance" "test"{
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  tags {
    Name = "mongo-docker"
  }
  
  provisioner "local-exec" {
    command = "sleep 140; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u centos -i '${aws_instance.test.public_ip},' --private-key /Users/yossi.s/.ssh/yossi-test.pem /Users/yossi.s/Desktop/terraform/terraform/main.yml" 
  }
}








