resource "google_compute_address" "static_ip" {
  name = var.ip_publico
}

resource "google_compute_firewall" "allow_ssh_ex"  {
    name = var.fw_name
    network = google_compute_network.vpc_network.name

    allow {
        protocol = var.allow_rule["protocol"]
        ports    = var.allow_rule["ports"]
    }
    source_ranges =  var.source_ranges
}

resource "google_compute_instance" "vm" {
    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }
    network_interface {
      network = google_compute_network.vpc_network.id
      subnetwork = google_compute_subnetwork.subnet.id
      access_config {
        nat_ip = google_compute_address.static_ip.address
      }
    }

    metadata = {
      ssh-keys = "tux:${file("/home/emerson/4Linux/8740-524-ssh-keys/8740-524.pub")}"
    }

    # metadata_startup_script = <<-EOT
    #   #!/bin/bash

    #   sudo apt update
    #   sudo apt install nginx -y
    # EOT

    # metadata_startup_script = "sudo apt update; sudo apt install nginx"

    depends_on = [ google_compute_address.static_ip ]
  
}


resource "null_resource" "install_nginx"{

  connection {
    type     = "ssh"
    user     = "tux"
    private_key = file("/home/emerson/4Linux/8740-524-ssh-keys/8740-524")
    host     = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      <<-EOT
      cat << EOF | sudo tee /var/www/html/index.html
      <!DOCTYPE html>
      <html lang="pt-br">
      <head>
        <meta charset="UTF-8">
        <title>Bem-vindo</title>
        <style>
          body {
            background-color: #282c34;
            color: #61dafb;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
          }
          h1 {
            font-size: 2.5rem;
            text-shadow: 2px 2px #000;
          }
        </style>
      </head>
      <body>
        <h1>Bem-vindo ao curso Terraform 4 Linux -> VM02 🚀</h1>
      </body>
      </html>
      EOF
      EOT
    ]
  }
}