# My Notebook Project

This project automates the deployment of a Jupyter Notebook to GCP Workbench using CI/CD.

## Prerequisites
- Google Cloud Platform (GCP) account
- Terraform installed
- GCP credentials stored as a GitHub secret (`GCP_CREDENTIALS_JSON`)
- GCP Project ID stored as a GitHub secret (`GCP_PROJECT_ID`)

## Usage
1. Clone this repository.
2. Set up your GCP credentials and project ID as GitHub secrets.
3. Push changes to the `main` branch to trigger the CI/CD pipeline.