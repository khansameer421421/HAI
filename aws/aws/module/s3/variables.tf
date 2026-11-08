variable "bucket_name" {
  description = "Globally unique name for the S3 bucket."
  type        = string

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "The bucket name must be between 3 and 63 characters."
  }
}

variable "force_destroy" {
  description = "Allow Terraform to delete a non-empty bucket. Keep false for production data."
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable S3 object versioning."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the S3 bucket."
  type        = map(string)
  default     = {}
}
