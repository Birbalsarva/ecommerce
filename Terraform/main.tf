
# main.tf

# EC2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-080e1f13689e07408"  
  instance_type = "t2.medium"
  tags = {
    Name = "ecommerce-ec2-instance"
  }
}

# S3 bucket
resource "aws_s3_bucket" "ecommerce_bucket" {
  bucket = "ecommerce-bucket-name"  
  acl    = "private"
}

# MongoDB instance
resource "aws_instance" "mongodb_instance" {
  ami           = "ami-080e1f13689e07408"  
  instance_type = "t2.medium"
  tags = {
    Name = "ecommerce-mongodb-instance"
  }
}
