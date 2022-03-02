terraform {
  required_providers {
    nirmata = {
      source  = "nirmata/nirmata"
      version = "1.1.7-rc7"
    }
  }
}

provider "nirmata" {

  url   = var.url
  token = var.nirmata_token
}
