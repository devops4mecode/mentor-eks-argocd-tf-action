terraform {
  backend "s3" {
    bucket               = "do4m-tf-eks-cluster"
    key                  = "argocdinfra.json"
    region               = "ap-southeast-1"
    workspace_key_prefix = "env-dev"
    dynamodb_table       = "do4m-tf-eks-cluster.lock" 
  }
}