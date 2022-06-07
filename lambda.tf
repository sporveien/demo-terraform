resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_s3_bucket" "lambdabucket" {
  bucket = "lambda-bucket"
  acl    = "private"
  versioning {
    enabled = false
  }
}
resource "aws_s3_bucket_object" "lambda_object" {
  bucket = aws_s3_bucket.lambdabucket.id
  key    = "lambda_object/lambda_object.zip"
}

resource "aws_lambda_function" "lambda" {
  function_name = #
  role          = # 
  s3_bucket     = # 
  s3_key        = # 
  depends_on = [
    aws_s3_bucket.lambdabucket,
  ]
}

