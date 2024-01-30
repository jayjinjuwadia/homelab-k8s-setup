resource "libvirt_pool" "pool" {
  name = "pool"
  type = "dir"
  path = var.pool_dir
}

resource "libvirt_volume" "centos_stream" {
  name   = "centos_stream"
  pool   = libvirt_pool.pool.name
  #source = "https://cloud.centos.org/centos/9-stream/x86_64/images/CentOS-Stream-GenericCloud-9-latest.x86_64.qcow2"
  source = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  depends_on = [ libvirt_pool.pool ]
}

resource "libvirt_volume" "master" {
  name = "master.qcow2"
  pool = libvirt_pool.pool.name
  base_volume_id = libvirt_volume.centos_stream.id
  depends_on = [ libvirt_volume.centos_stream ]
}