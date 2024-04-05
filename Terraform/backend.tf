terraform {
  backend "s3" {
    bucket = "mystatebucketterraform990"
    key    = "state"
    region = "ap-south-1"
    dynamodb_table = "backend"
  }
}

