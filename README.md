# sysadventco terraform example

This is an extremely contrived example repository showing a Terraform-based workflow for managing GitHub repositories. It's built in support of a SysAdvent 2019 blog entry.

The example code here is not meant to provide any sort of recommended practices, it's simply supposed to be an example of how to use a workflow for managing non-infrastructure resources that mirrors what we often use for Infrastructure as Code workflows. *Please don't use any of this code outside of playing around.* There's lots of Bad Things done here, one of the worst is storing the state file in the repository itself. I'm doing so to make the entire thing self-contained within GitHub and no need for external state storage while also allowing GitHub Actions to show plans. This will not scale at all and sometimes you can end up with sensitive data in the state itself.

```shell
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.example-service will be created
  + resource "github_repository" "example-service" {
      + allow_merge_commit = true
      + allow_rebase_merge = true
      + allow_squash_merge = true
      + archived           = false
      + default_branch     = (known after apply)
      + description        = "the source code for example-service"
      + etag               = (known after apply)
      + full_name          = (known after apply)
      + git_clone_url      = (known after apply)
      + gitignore_template = "Rails"
      + homepage_url       = "https://sysadvent.blogspot.com/"
      + html_url           = (known after apply)
      + http_clone_url     = (known after apply)
      + id                 = (known after apply)
      + name               = "example-service"
      + ssh_clone_url      = (known after apply)
      + svn_url            = (known after apply)
    }

  # github_repository.sysadventco-terraform will be created
  + resource "github_repository" "sysadventco-terraform" {
      + allow_merge_commit = true
      + allow_rebase_merge = true
      + allow_squash_merge = true
      + archived           = false
      + default_branch     = (known after apply)
      + description        = "example Terraform source for managing the example-service repository"
      + etag               = (known after apply)
      + full_name          = (known after apply)
      + git_clone_url      = (known after apply)
      + gitignore_template = "Terraform"
      + homepage_url       = "https://sysadvent.blogspot.com"
      + html_url           = (known after apply)
      + http_clone_url     = (known after apply)
      + id                 = (known after apply)
      + name               = "sysadventco-terraform"
      + ssh_clone_url      = (known after apply)
      + svn_url            = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.
```
