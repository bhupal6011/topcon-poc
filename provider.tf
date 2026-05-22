provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "my-aw-sdemo"
    key            = var.terraform_state_file_key 
    region         = "us-east-1"
    #dynamodb_table = "terraform-lock-table2"    # Replace with your DynamoDB table name
    #encrypt        = true                      # Enable server-side encryption for state file
}

}
