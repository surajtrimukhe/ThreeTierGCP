terraform {
  backend "gcs" {
    bucket      = "terraform-state-bkt-1"
    prefix      = "terraform"
    credentials = "credentials.json"
  }
}