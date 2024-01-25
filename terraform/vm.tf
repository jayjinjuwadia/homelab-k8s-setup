resource "libvirt_domain" "master" {
  name = "master"
  vcpu = 4
  memory = "4096"
  disk {
    volume_id = libvirt_volume.master.id
    scsi      = "true"
  }
  autostart = true
    network_interface {
        network_id = libvirt_network.bridge.id
        hostname = "master"
        wait_for_lease = true
        addresses = ["192.168.122.10"]
    }
    graphics {
      type = "vnc"
    }
}
#security driver none