
module "ec2_instance" {
    source = "./module/ec2_instance"
    ami_value = "ami-01816d07b1128cd2d"
    instance_type_value = "t2.micro"
}