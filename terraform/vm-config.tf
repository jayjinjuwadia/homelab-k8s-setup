data "template_file" "master_user_data" {
  template = file("${path.module}/master-config.cfg")
}

data "template_file" "network_config" {
  template = file("${path.module}/network.cfg")
}

resource "libvirt_cloudinit_disk" "master_init" {
  name           = "masterinit.iso"
  user_data      = data.template_file.master_user_data.rendered
  network_config = data.template_file.network_config.rendered
  pool           = libvirt_pool.pool.name
  depends_on = [ libvirt_pool.pool ]
}