## Requirements

- Running XOA host VM
- Run the terraform apply with the correct parameters from usage
- See Helful Notes for additional information

## Usage

```
terraform apply \
    -var xoa_url="wss://localhost" \
    -var xoa_user="xo_web_user" \
    -var xoa_pass="xo_web_password" \
    -var ssh_pub_key="./id_rsa.pub" \
    -var vm_user="some_user"
```

## Helpful Notes

- cloud_config.tftpl
    - Changes to this file will be applicable to all VMs

- data.tf
    - Modify values within file to correspond with matching XCP-ng values

- virtualmachines.tf to add additional VMs
    - change ip values where desired
    - change hostname values where desired