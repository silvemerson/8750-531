resource "google_compute_firewall" "this" {
    name = var.name
    network = var.network

    allow {
        protocol = var.allow_rule["protocol"]
        ports    = var.allow_rule["ports"]
    }
    source_ranges =  var.source_ranges
}