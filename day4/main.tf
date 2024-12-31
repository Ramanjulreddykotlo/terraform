provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "Ram" {
  instance_type = "t2.micro"
  ami = "ami-01816d07b1128cd2d"
  tags = {
    name = "demo-instance"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-backend-s3-bucket-12345xyz"

}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "terraform_locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
