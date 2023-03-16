variable "bucket_name" {
  type        = string
  description = "Bucket Name"
  default     = "do4m-tf-eks-cluster"
}

variable "bucket_key" {
  type        = string
  description = "Bucket Key"
  default     = "argocdinfra.json"
}

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}


variable "dynamodb_table_name" {
  type        = string
  description = "AWS Region"
  default     = "do4m-tf-eks-cluster.lock"
}