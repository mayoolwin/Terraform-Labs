terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}