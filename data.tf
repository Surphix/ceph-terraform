data "xenorchestra_pool" "pool" {
    name_label = "pool"
}

data "xenorchestra_template" "ubuntu_template" {
    name_label = "ubuntu-focal-20.04-cloudimg-20230111"
}

data "xenorchestra_network" "net" {
  name_label = "10G-INT"
}

data "xenorchestra_sr" "xcp-2-local-storage" {
    name_label = "local-xcp2-ssd-256"
}

data "xenorchestra_sr" "xcp-3-local-storage" {
    name_label = "local-xcp3-ssd-256"
}