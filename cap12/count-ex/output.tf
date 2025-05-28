output "vm_count_locals" {
    value = [for i in google_compute_instance.vm_count_locals : i.name ]
  
}

output "vm_ips" {
    value = [for i in google_compute_instance.vm_count_locals : i.network_interface[0].network_ip]
  
}

output "vm_for_each" {
    value = [for i in google_compute_instance.vm_for_each : i.name]
  
}

output "count_workspace" {
    value = terraform.workspace == "dev" ? [for i in google_compute_instance.count_workspace : i.name] : []
  
}