provider "github" {
  token        = var.github_token
  organization = "Spindoctors"
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Spindoctors"

    workspaces {
      name = "TFCloud"
    }
  }
}

variable "github_token" {
  type = string
}

resource "github_repository" "Cloud-repo-ic" {
  name        = "Cloud-repo-ic"
  description = "Another repo created from terraform cloud"
}
