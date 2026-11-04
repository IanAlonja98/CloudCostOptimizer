terraform {
  backend "s3" {
    bucket       = "cloudcost-tfstate-2x4"
    key          = "cloudcost/terraform.tfstate"
    region       = "us-east-2"
    profile      = "for-terraform-project"
    use_lockfile = true
  }
}
