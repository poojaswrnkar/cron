terraform {
  cloud {
    organization = "Devops_LL"  # Replace with your actual organization name

    workspaces {
      name = "cron"  # Your workspace name
    }
  }
}
