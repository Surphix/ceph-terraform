resource "xenorchestra_vm" "ceph-storage-1" {
    memory_max = 34359738368
    cpus = 8
    cloud_config = templatefile("cloud_config.tftpl", {
        hostname = "ceph-storage-1"
        ip = var.ip_list[0]
        ssh_pub_key = file(var.ssh_pub_key)
        user = var.vm_user
    })
    name_label = "ceph-storage-1"
    name_description = "Ceph Storage"
    template = data.xenorchestra_template.ubuntu_template.id

    disk {
        sr_id = data.xenorchestra_sr.xcp-2-local-storage.id
        name_label = "Ubuntu Home"
        size = 53687091200
    }

    network {
      network_id = data.xenorchestra_network.net.id
    }

    tags = [
      "Ceph",
    ]
}

resource "xenorchestra_vm" "ceph-storage-2" {
    memory_max = 34359738368
    cpus = 8
    cloud_config = templatefile("cloud_config.tftpl", {
        hostname = "ceph-storage-2"
        ip = var.ip_list[1]
        ssh_pub_key = file(var.ssh_pub_key)
        user = var.vm_user
    })
    name_label = "ceph-storage-2"
    name_description = "Ceph Storage"
    template = data.xenorchestra_template.ubuntu_template.id

    disk {
        sr_id = data.xenorchestra_sr.xcp-2-local-storage.id
        name_label = "Ubuntu Home"
        size = 53687091200
    }

    network {
      network_id = data.xenorchestra_network.net.id
    }

    tags = [
      "Ceph",
    ]
}

resource "xenorchestra_vm" "ceph-storage-3" {
    memory_max = 34359738368
    cpus = 8
    cloud_config = templatefile("cloud_config.tftpl", {
        hostname = "ceph-storage-3"
        ip = var.ip_list[2]
        ssh_pub_key = file(var.ssh_pub_key)
        user = var.vm_user
    })
    name_label = "ceph-storage-3"
    name_description = "Ceph Storage"
    template = data.xenorchestra_template.ubuntu_template.id

    disk {
        sr_id = data.xenorchestra_sr.xcp-3-local-storage.id
        name_label = "Ubuntu Home"
        size = 53687091200
    }

    network {
      network_id = data.xenorchestra_network.net.id
    }

    tags = [
      "Ceph",
    ]
}

resource "xenorchestra_vm" "ceph-storage-4" {
    memory_max = 34359738368
    cpus = 8
    cloud_config = templatefile("cloud_config.tftpl", {
        hostname = "ceph-storage-4"
        ip = var.ip_list[3]
        ssh_pub_key = file(var.ssh_pub_key)
        user = var.vm_user
    })
    name_label = "ceph-storage-4"
    name_description = "Ceph Storage"
    template = data.xenorchestra_template.ubuntu_template.id

    disk {
        sr_id = data.xenorchestra_sr.xcp-3-local-storage.id
        name_label = "Ubuntu Home"
        size = 53687091200
    }

    network {
      network_id = data.xenorchestra_network.net.id
    }

    tags = [
      "Ceph",
    ]
}