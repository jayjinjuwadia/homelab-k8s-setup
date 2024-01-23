terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.7.6"
    }
  }
}

# - make sure user is in libvirtd and qemu group
# - make sure allow tcp forwarding is on in sshd_config
# - make sure libvirtd.socket and libvirtd-ro.socket specify SocketMode and SocketGroup so group members can access socket
#   if libvirtd is managed by systemd, otherwise edit /etc/libvirt/libvirtd.conf
provider "libvirt" {
  uri = "qemu+ssh://${var.server_username}@${var.server_host}/system?keyfile=${var.keyfile_path}&sshauth=privkey"
}