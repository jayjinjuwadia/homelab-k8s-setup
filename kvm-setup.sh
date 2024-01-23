#!/bin/bash

lscpu | grep Virtualization

lsmod | grep kvm

sudo dnf update -y

sudo dnf install virt-install virt-viewer -y

sudo dnf install -y libvirt

sudo dnf install virt-manager -y

sudo dnf install -y virt-top libguestfs-tools

sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo systemctl status libvirtd

nmcli connection show
$ sudo nmcli connection add type bridge autoconnect yes con-name kvmbr0 ifname kvmbr0
$ sudo nmcli connection modify kvmbr0 ipv4.addresses 192.168.1.179/24 gw4 192.168.1.1 ipv4.method manual
$ sudo nmcli connection modify kvmbr0 ipv4.dns 192.168.1.1
$ sudo nmcli connection del enp0s3
$ sudo nmcli connection add type bridge-slave autoconnect yes con-name enp0s3 ifname enp0s3 master kvmbr0
$ sudo nmcli connection up kvmbr0

ip addr show


