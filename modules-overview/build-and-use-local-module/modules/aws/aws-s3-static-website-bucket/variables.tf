# -----------------------------------------
# S3 Bucket: Variables
# -----------------------------------------

variable "bucket_name" {
  description = "Name of the s3 bucket -- must be unique"
  type        = string
}

variable "bucket_tag" {
  description = "s3 bucket tag name"
  type        = string
  # default     = {}
}
# type        = map(string)
