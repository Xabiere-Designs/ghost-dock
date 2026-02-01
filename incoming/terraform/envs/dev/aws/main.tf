terraform {
  backend "s3" {
    bucket = "REPLACE_ME_tf_state_bucket"
    key    = "dev/aws/ghost-dock.tfstate"
    region = "us-east-1"
    dynamodb_table = "REPLACE_ME_tf_lock_table"
  }
}
provider "aws" { region = "us-east-1" }
module "vpc" {
  source = "../../modules/vpc"
  region = "us-east-1"
}
