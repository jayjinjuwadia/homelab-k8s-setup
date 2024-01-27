variable "network_name" {
    type = string
    description = "Name of the network"
}

variable "bridge_name" {
    type = string
    description = "Interface to attach bridge network to"
}

variable "bridge_cidr" {
    type = string
    description = "bridge cidr"
}

variable "gateway" {
  type = string
  description = "Ip address of the gateway"
  default = "192.168.0.1"
} 

variable "network_cidr" {
  type = string
  description = "Network cidr range"
}