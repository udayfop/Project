variable "region_us_east_1" {
  description = "The AWS region for the first set of resources"
  type        = string
  default     = "us-east-1"
}

variable "region_us_east_2" {
  description = "The AWS region for the second set of resources"
  type        = string
  default     = "us-east-2"
}

variable "aws_access_key" {
  description = "The AWS access key for LocalStack"
  type        = string
  default     = "test"
}

variable "aws_secret_key" {
  description = "The AWS secret key for LocalStack"
  type        = string
  default     = "test"
}
