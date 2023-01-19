  # must be ws or wss
variable "xoa_url" {
  type = string
  default = "ws://localhost"
}

variable "xoa_user" {
  type = string
  default = "xo"
}

variable "xoa_pass" {
  type = string
  default = "xopass"
}

variable "xoa_insecure" {
  default = true
}

variable "vm_user" {
  type = string
  default = "user"
}

variable "ssh_pub_key" {
  type = string
  default = "~/.ssh/id.pub"
}