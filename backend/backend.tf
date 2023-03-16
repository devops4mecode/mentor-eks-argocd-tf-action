resource "aws_s3_bucket" "terraform_state" {
  bucket = "do4m-tf-eks-cluster"
  force_destroy= true
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "do4m-tf-eks-cluster.lock"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}