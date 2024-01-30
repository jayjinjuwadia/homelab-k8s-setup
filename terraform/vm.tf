resource "libvirt_domain" "master" {
  name = "master"
  vcpu = 4
  memory = "4096"
  cloudinit = libvirt_cloudinit_disk.master_init.id
  disk {
    volume_id = libvirt_volume.master.id
    scsi      = "true"
  }
  autostart = false
    network_interface {
        network_id = libvirt_network.bridge.id
        hostname = "master"
    }
    graphics {
      type = "vnc"
    }
    console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
    source_path = "/dev/pts/4"
  }
}
#security driver none