output "static_ip_public" {
    description = "Meu IP Publico"
    value = google_compute_address.static_ip.address
  
}

output "vm_name" {
    value = google_compute_instance.vm.name
  
}

output "machine_type" {
    value = google_compute_instance.vm.machine_type
  
}

output "disk_name" {
    value = google_compute_disk.vm-disco.name
}

output "type_disk" {
    value = google_compute_disk.vm-disco.type
  
}