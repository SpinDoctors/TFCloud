provider "github" {
  token        = var.github_token
  organization = "Spindoctors"
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Spindoctors"

    workspaces {
      name = "TFCloud-github"
    }
  }
}

variable "github_token" {
  type = string
}

//resource "github_repository" "TFCloud_one" {
//  name        = "TFCloud_one"
//  description = "First of many created from Terraform"
//}

resource "github_team" "data-science-team" {
  name        = "data-science-team"
  description = "Example team created from terraform cloud"
  privacy     = "closed"
}
//
//
//# add a user

resource "github_membership" "add_user_Wessel" {
    username = "wesselr"
    role     = "admin"
}

resource "github_membership" "add_user_Ndafara" {
    username = "ndafarat"
    role     = "member"
}

resource "github_membership" "add_user_Kavirn" {
    username = "kavirn"
    role     = "member"
}




// # add member to a team
// resource "github_team_membership" "example-team" {
//     team_id  = "${github_team.example-team.id}"
//     username = "mathubad"
//     role     = "member"
// }


# grant team push - pull access to example-poc-repo repository
//resource "github_team_repository" "example-poc-repo" {
//    team_id     = "${github_team.example-team.id}"
//    repository  = "${github_repository.example-poc-repo.name}"
//    permission  = "push"
//}
//
//
//# this repo initially created from Gitub front end
resource "github_repository" "created-from-GithubUI" {
    name        = "repo-from-github"
    description = "Updating the repo"
}
