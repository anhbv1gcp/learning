terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "org-vinid"

    workspaces {
      name = "learning"
    }
  }
}