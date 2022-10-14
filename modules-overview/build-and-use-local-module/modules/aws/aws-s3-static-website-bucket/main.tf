#-----------------------------------------
# S3 Bucket: Configure
#-----------------------------------------

resource "aws_s3_bucket" "s3_bucket" { # -> s3_website_bucket -- personal name
  bucket = var.bucket_name

  tags = {
    "Name" = var.bucket_tag
  }
}

resource "aws_s3_bucket_website_configuration" "s3_bucket" { # -> s3_website_config -- personal name
  bucket = aws_s3_bucket.s3_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  # routing_rule {
  #     condition {
  #         key_prefix_equals = "docs/"
  #     }

  #     redirect {
  #         replace_key_prefix_with = "documents/"

  #     }
  # }
}



resource "aws_s3_bucket_acl" "s3_bucket" { # -> s3_bucket_access -- personal name
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "s3_bucke" { # -> s3_bucket_policy -- personal name
  bucket = aws_s3_bucket.s3_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = [
          aws_s3_bucket.s3_bucket.arn,
          "${aws_s3_bucket.s3_bucket.arn}/*",
        ]
      },
    ]
  })
}
