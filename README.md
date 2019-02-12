# terraform-ansible-docker-aws
automation with terraform + ansible + docker on AWS

pre :
ansible 2.5

create an account on AWS.

create a user for terraform with ec2 permision.

generate aws access and secret keys.


you can use them as env varibles or can be stored in cred file



* Usege :

terraform init

terraform plan -out test.tfplan

terraform apply "test.tfplan"


terraform will lunch EC2 instance on aws using the aws access + secret key
attached a secuirty group with port 22 and 8080 open to the world

* anisible will start the secound part of the automation, runing 3 roles and tasks:

1.install dependencies like python tools and docker

2.pull and run an apache container

3.pull and run mongodb container


* the mongo task will deploy a python script to the mongo container

in oredr to track twwets on twitter that contain the word "docker"

* the apache task will deploy a webserver container with a info.php file

that will connect to mongo container and dispaly some of the

tracked tweets on the public host IP :   <public-ip>:8082\info.php
  
  
  *** change the ip to your container ip on the python script
