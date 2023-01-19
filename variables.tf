  # must be ws or wss
variable "xoa_url" {
  description = "XOA url, must be either ws:// or wss://"
  type = string
  default = "ws://localhost"
}

variable "xoa_user" {
  description = "XOA Web user"
  type = string
  default = "xo"
}

variable "xoa_pass" {
  description = "XOA Web Pass"
  type = string
  default = "xopass"
}

variable "xoa_insecure" {
  description = "True if self signed certificate"
  default = true
}

variable "vm_user" {
  description = "Username to be used as sudo user for VM"
  type = string
  default = "user"
}

variable "ssh_pub_key" {
  description = "Path to ssh public key"
  type = string
  default = "~/.ssh/id.pub"
}

variable "ip_list" {
  description = "IPs to use for the VMs"
  type = list
}