resource "google_compute_instance" "import" {

  name = "instance-import"
  machine_type = "e2-small"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20250513"
    }
    
  }  
  network_interface{
    network = "vpc-import"
    subnetwork = "subnet-import"


  access_config{

      }
    }

}
resource "google_compute_network" "import" {
  name = "vpc-import"
}


resource "google_compute_disk" "import" {
  name = "disk-import"
}
