
# create ec2 instance using the variables
resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    tags = {
        Name = "example"
    }
}