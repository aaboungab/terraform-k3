terraform {
  backend "remote" {
    organization = "aa-mtc-terraform"

    workspaces {
      name = "aa-mtc-dev"
    }
  }
}