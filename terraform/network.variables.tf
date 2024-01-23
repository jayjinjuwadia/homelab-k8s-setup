variable "network_name" {
    type = string
    description = "Name of the network"
}

variable "bridge_name" {
    type = string
    description = "Interface to attach bridge network to"
}

variable "bridge_cidr" {
    type = list(string)
    description = "List of bridge cidrs"
}