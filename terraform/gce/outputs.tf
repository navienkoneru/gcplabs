output "INSTANCE_ID" {
  value = google_compute_instance.vminstance.instance_id
}

output "self_link" {
  value = google_compute_instance.vminstance.self_link
}
