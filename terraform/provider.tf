terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
        nirmata = {
            source = "nirmata/nirmata"
            version = "1.1.7-rc7"
        }
    }
    backend "remote" {
      organization = "Nirmata"
      workspaces {
        name = "gh-actions-demo"
      }
    }
}


variable "project_name" {
    type = string
    default = "eks-demo"
}

provider "aws" {
    region     = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

provider "nirmata" {

  # Nirmata address.
  url = "https://nirmata.io"

  // Nirmata API Key. Also configurable using the environment variable NIRMATA_TOKEN.
  token = var.nirmata_token

}

variable "nirmata_token" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}

