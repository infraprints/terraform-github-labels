provider "github" {
  organization = "infraprints"
}

module "example" {
  source = "../../"

  name = "test-tfgithub"

  labels = [
    {
      name  = "scope:build"
      color = "008672"
    },
    {
      name  = "scope:backend"
      color = "FF5A00"
    },
    {
      name  = "scope:core"
      color = "C1327A"
    },
    {
      name  = "scope:frontend"
      color = "F0AD4E"
    },
    {
      name  = "scope:api"
      color = "A2EEEF"
    },
  ]
}
