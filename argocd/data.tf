// get the remote state data for eks
data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket               = "do4m-tf-eks-cluster"
    key                  = "argocdinfra.json"
    region               = "ap-southeast-1"
    workspace_key_prefix = "env-dev"
    dynamodb_table       = "do4m-tf-eks-cluster.lock"
  }
}
