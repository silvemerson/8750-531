resource "google_compute_instance_template" "default" {
    name = var.instance-template-name
    description = "Template para criação das instâncias"
    
    tags = [ "webapps" ]

    machine_type = var.machine_type

    disk {
      source_image = var.image
      auto_delete = true
      boot = true
    }

    network_interface {
      network = google_compute_network.vpc_projeto.self_link

      access_config {
        
      }
    }

    metadata_startup_script = file(var.back_provision_script)

}