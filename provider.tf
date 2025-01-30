terraform {
        required_providers {
            aws = {
                source = "hasicorp/aws"
                version = "5.84.0"
            }
        }
}
 provider "aws" {
    # Configuration Options
    region = "us-east-1"

 }