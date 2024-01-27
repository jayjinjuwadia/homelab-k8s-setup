resource "libvirt_network" "bridge" {
    name = var.network_name
    mode = "bridge"
    bridge = var.bridge_name
    autostart = true
    addresses = [var.bridge_cidr]
}