variable "github_token" {
  type = string
}

variable "github_organization" {
  type = string
}

terraform {
  backend "remote" {
    organization = "wyattwalter"

    workspaces {
      name = "sysadventco-terraform"
    }
  }
}

# Include the GitHub provider, set some basics
# for the example, set these with environment variables:
# TF_github_token=asdf TF_github_organization=sysadventco terraform plan
provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

resource "github_repository" "sysadventco-terraform" {
  name               = "sysadventco-terraform"
  description        = "example Terraform source for managing the example-service repository"
  homepage_url       = "https://sysadvent.blogspot.com"
  gitignore_template = "Terraform"
}

# Here we are creating the example-service repository with a few attributes
resource "github_repository" "example-service" {
  name               = "example-service"
  description        = "the source code for example-service"
  homepage_url       = "https://sysadvent.blogspot.com/"
  gitignore_template = "Rails"
}
