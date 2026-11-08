variable "aws_region" {
  description = "AWS region in which to create the S3 bucket."
  type        = string
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket."
  type        = string
}

variable "environment" {
  description = "Environment name used for default resource tags."
  type        = string
  default     = "dev"
}

variable "force_destroy" {
  description = "Allow Terraform to delete a non-empty bucket."
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable S3 object versioning."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to resources."
  type        = map(string)
  default     = {}
}
