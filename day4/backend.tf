terraform {
 backend "s3" {
    bucket = "my-backend-s3-bucket-1234567890"
    key   = "ram/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_locks"
 } 
}
