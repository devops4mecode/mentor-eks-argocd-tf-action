provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      Project   = "eks-argocd-demo"
      ManagedBy = "do4m"
    }
  }
}
