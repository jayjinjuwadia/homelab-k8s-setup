resource "libvirt_pool" "pool" {
  name = "pool"
  type = "dir"
  path = "/home/jayjinjuwadia/cluster_storage"
}

resource "libvirt_volume" "centos_stream" {
  name   = "centos_stream"
  pool   = libvirt_pool.pool.name
  source = "https://cloud.centos.org/centos/9-stream/x86_64/images/CentOS-Stream-GenericCloud-9-latest.x86_64.qcow2"
}

resource "libvirt_volume" "master" {
  name = "master.qcow2"
  pool = libvirt_pool.pool.name
  base_volume_id = libvirt_volume.centos_stream.id
}