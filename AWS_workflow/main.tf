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

//resource "github_team" "Team_one" {
//  name        = "example-team"
//  description = "POC team created from Terraform"
//  privacy     = "closed"
//}
//
//
//# add a user
//resource "github_membership" "add_user_Mathuba" {
//    username = "mathubad"
//    role     = "member"
//    // destroy  = true
//
//}
//
//resource "github_membership" "add_user_Wessel" {
//    username = "wesselr"
//    role     = "member"
//    // destroy  = true
//}
//
//resource "github_membership" "add_user_Ndafara" {
//    username = "ndafarat"
//    role     = "member"
//    // destroy  = true
//}



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
//resource "github_repository" "created-from-GithubUI" {
//    name        = "created-from-GithubUI"
//    description = "Terraform state file must be updated with this repo"
//}
