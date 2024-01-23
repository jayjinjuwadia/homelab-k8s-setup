variable "server_username" {
    type = string
    description = "Username for ssh login"
}

variable "server_host" {
    type = string
    description = "IP/Domain name for connecting to the server"
}

variable "keyfile_path" {
    type = string
    description = "Local filepath to ssh private key for server, must not be encrypted"
}