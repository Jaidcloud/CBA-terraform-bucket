# Defining the AWS provider with the region
provider "aws" {
  region = "eu-west-2"  
}


# Defining the S3 bucket resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-bucket-cba" 
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }
}
# Defining the versioning configuration for the S3 bucket
resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.bucket
  versioning_configuration {
    status = "Suspended"  # equivalent to setting enabled = false
  }
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}