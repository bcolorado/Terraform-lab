terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
# Configure the GitHub Provider
provider "github" {
  token        = var.github_token
}


# Defining the variables
variable "github_token" {
  description = "The GitHub personal access token"
  type        = string
}

# Create a repository from a template
resource "github_repository" "example" {
  name        = "TerraformRepoExample"
  description = "This is an example repository created from a template in Terraform."
  visibility  = "public"
}

# Crate a file in the repository
resource "github_repository_file" "example" {
  repository = github_repository.example.name
  file       = "README.md"
  content    = "# Example readme for this Terraform-created repository"
}


# Create a 'development' branch
resource "github_branch" "development" {
  repository = github_repository.example.name
  branch     = "development"
  depends_on = [github_repository_file.example]
}

# Create a 'feature' branch
resource "github_branch" "feature" {
  repository = github_repository.example.name
  branch     = "feature"
  depends_on = [github_repository_file.example]
}

# Create a 'bugfix' branch
resource "github_branch" "bugfix" {
  repository = github_repository.example.name
  branch     = "bugfix"
  depends_on = [github_repository_file.example]
}
