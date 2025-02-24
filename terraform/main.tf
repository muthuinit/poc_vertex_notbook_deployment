provider "google" {
  credentials = file("<path-to-gcp-credentials>")  # Use GitHub secret for this
  project     = var.gcp_project_id
  region      = "us-central1"
}

resource "google_notebooks_instance" "my_notebook" {
  name         = "my-workbench-instance"
  location     = "us-central1-a"
  machine_type = "n1-standard-4"
  vm_image {
    project      = "deeplearning-platform-release"
    image_family = "tf-latest-cpu"
  }
}

variable "gcp_project_id" {
  description = "GCP Project ID"
  type        = string
}