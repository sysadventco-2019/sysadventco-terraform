# sysadventco terraform example

This is an extremely contrived example repository showing a Terraform-based workflow for managing GitHub repositories. It's built in support of a SysAdvent 2019 blog entry.

The example code here is not meant to provide any sort of recommended practices, it's simply supposed to be an example of how to use a workflow for managing non-infrastructure resources that mirrors what we often use for Infrastructure as Code workflows.

This example is using both Terraform Cloud and GitHub actions to do `plan`s on pull requests. This is sort of duplicate effort, but GitHub Actions are used just to be able to display the `terraform plan` output directly in the PR. As of this writing, I don't believe Terraform Cloud offers this functionality.
