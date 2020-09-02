provider "aws" {
  region  = var.region
  version = "=3.4.0"
}

module "tfstate_backend" {
  source = "../../"

  region    = var.region
  namespace = var.namespace
  stage     = var.stage
  name      = var.name

  force_destroy = true
}
