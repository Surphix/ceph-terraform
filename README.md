## Requirements

- Running XOA host VM
- Run the terraform apply with the correct parameters from usage
- See Helful Notes for additional information

## Usage

Create a *.tfvars file and supply the following values,

```
xoa_url="wss://localhost"
xoa_user="xoa_web_user"
xoa_pass="xoa_web_pass"
xoa_insecure = true
ssh_pub_key="/home/user/id_rsa.pub"
vm_user="user"
ip_list=["10.0.0.1", "10.0.0.2", "10.0.0.3", "10.0.0.4"]
```

Then run the following

```
terraform apply -var-file variables.tfvars
```

NOTE: Best way to run ceph on XCP-ng is to provide RAID controllers as pass through devices.
https://xcp-ng.org/docs/compute.html#pci-passthrough

## Helpful Notes

- Changes to cloud_config.tftpl will be applicable to all VMs
- Modify values within data.tf file to correspond with matching XCP-ng values

## Post ceph-terraform

Leverage cephadm ansible

https://github.com/ceph/cephadm-ansible
https://docs.ceph.com/projects/cephadm-ansible/en/latest/index.html

Create the inventory file based hostname / IP

NOTE: View supported groups to better define monitors, rgw, osds, etc.

```
ceph-storage-1 ansible_host=10.0.0.1
ceph-storage-2 ansible_host=10.0.0.2
...

[admin]
ceph-stroage-1 ansible_host=10.0.0.1
```

Once the inventory has been created run preflight checks

```
ansible-playbook -i inventory cephadm-preflight.yml
```