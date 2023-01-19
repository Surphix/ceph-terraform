terraform {
  required_providers {
    xenorchestra = {
      source = "terra-farm/xenorchestra"
      version = "~> 0.23.3"
    }
  }
}

provider "xenorchestra" {
  url      = var.xoa_url
  username = var.xoa_user
  password = var.xoa_pass
  insecure = var.xoa_insecure
}