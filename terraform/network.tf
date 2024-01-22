resource "libvirt_network" "bridge" {
    name = "bridge-network"
    mode = "bridge"
    bridge = "eno1"
    autostart = true
    addresses = ["192.168.0.84/24"]
    dns {
        enabled = true
    }
}