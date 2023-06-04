terraform {
  backend "s3" {
    encrypt = true 
    bucket = "s3-locked-bucket-99"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform.tfstate"

    region = "us-east-1"
  }
}
