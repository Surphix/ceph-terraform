## Requirements

- Running XOA host VM
- Run the terraform apply with the correct parameters from usage
- See Helful Notes for additional information

## Usage

```
terraform apply -var-file definitions.tfvars
```

## Helpful Notes

- Changes to cloud_config.tftpl will be applicable to all VMs
- Modify values within data.tf file to correspond with matching XCP-ng values

## Post ceph-terraform

Leverage cephadm ansible

https://github.com/ceph/cephadm-ansible

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