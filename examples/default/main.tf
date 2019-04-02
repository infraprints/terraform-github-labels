provider "github" {
  organization = "infraprints"
}

module "example" {
  source = "../../"

  name  = "test-tfgithub"
  color = "008672"

  labels = [
    {
      name        = "scope:build"
      description = "Designates that the isssue belongs to the build process."
    },
    {
      name        = "scope:backend"
      description = "Designates that the isssue belongs to the backend."
    },
    {
      name        = "scope:core"
      description = "Designates that the isssue belongs to the general product."
    },
    {
      name        = "scope:frontend"
      description = "Designates that the isssue belongs to the frontend."
    },
    {
      name        = "scope:api"
      description = "Designates that the isssue belongs to the API."
    },
  ]
}
