resource "google_compute_region_instance_group_manager" "appserver-us" {
    name = var.us-instance-group-name

    base_instance_name = "webapps"
    region = var.group_regions[0]
    distribution_policy_zones = var.us-zones

    version {
      instance_template = google_compute_instance_template.default.self_link
    }

    target_size = var.lb_group_sizes[1]
  
}


resource "google_compute_region_instance_group_manager" "appserver-asia" {
    name = var.asia-instance-group-name
    base_instance_name = "webapps"
    region = var.group_regions[1]

    version {
      instance_template = google_compute_instance_template.default.self_link
    }

    target_size = var.lb_group_sizes[1]
  
}