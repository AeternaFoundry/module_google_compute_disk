output "compute_disks_id" {
  description = "Map of id values across all compute_disks, keyed the same as var.compute_disks except keys with no id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_disks_access_mode" {
  description = "Map of access_mode values across all compute_disks, keyed the same as var.compute_disks except keys with no access_mode are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.access_mode if v.access_mode != null && length(v.access_mode) > 0 }
}
output "compute_disks_architecture" {
  description = "Map of architecture values across all compute_disks, keyed the same as var.compute_disks except keys with no architecture are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.architecture if v.architecture != null && length(v.architecture) > 0 }
}
output "compute_disks_async_primary_disk" {
  description = "Map of async_primary_disk values across all compute_disks, keyed the same as var.compute_disks except keys with no async_primary_disk are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => one(v.async_primary_disk) if v.async_primary_disk != null && length(v.async_primary_disk) > 0 }
}
output "compute_disks_create_snapshot_before_destroy" {
  description = "Map of create_snapshot_before_destroy values across all compute_disks, keyed the same as var.compute_disks except keys with no create_snapshot_before_destroy are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.create_snapshot_before_destroy if v.create_snapshot_before_destroy != null }
}
output "compute_disks_create_snapshot_before_destroy_prefix" {
  description = "Map of create_snapshot_before_destroy_prefix values across all compute_disks, keyed the same as var.compute_disks except keys with no create_snapshot_before_destroy_prefix are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.create_snapshot_before_destroy_prefix if v.create_snapshot_before_destroy_prefix != null && length(v.create_snapshot_before_destroy_prefix) > 0 }
}
output "compute_disks_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_disks, keyed the same as var.compute_disks except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_disks_deletion_policy" {
  description = "Map of deletion_policy values across all compute_disks, keyed the same as var.compute_disks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_disks_description" {
  description = "Map of description values across all compute_disks, keyed the same as var.compute_disks except keys with no description are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_disks_disk_encryption_key" {
  description = "Map of disk_encryption_key values across all compute_disks, keyed the same as var.compute_disks except keys with no disk_encryption_key are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => one(v.disk_encryption_key) if v.disk_encryption_key != null && length(v.disk_encryption_key) > 0 }
  sensitive   = true
}
output "compute_disks_disk_id" {
  description = "Map of disk_id values across all compute_disks, keyed the same as var.compute_disks except keys with no disk_id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.disk_id if v.disk_id != null && length(v.disk_id) > 0 }
}
output "compute_disks_effective_labels" {
  description = "Map of effective_labels values across all compute_disks, keyed the same as var.compute_disks except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_disks_enable_confidential_compute" {
  description = "Map of enable_confidential_compute values across all compute_disks, keyed the same as var.compute_disks except keys with no enable_confidential_compute are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.enable_confidential_compute if v.enable_confidential_compute != null }
}
output "compute_disks_guest_os_features" {
  description = "Map of guest_os_features values across all compute_disks, keyed the same as var.compute_disks except keys with no guest_os_features are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.guest_os_features if v.guest_os_features != null && length(v.guest_os_features) > 0 }
}
output "compute_disks_image" {
  description = "Map of image values across all compute_disks, keyed the same as var.compute_disks except keys with no image are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.image if v.image != null && length(v.image) > 0 }
}
output "compute_disks_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_disks, keyed the same as var.compute_disks except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_disks_labels" {
  description = "Map of labels values across all compute_disks, keyed the same as var.compute_disks except keys with no labels are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_disks_last_attach_timestamp" {
  description = "Map of last_attach_timestamp values across all compute_disks, keyed the same as var.compute_disks except keys with no last_attach_timestamp are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.last_attach_timestamp if v.last_attach_timestamp != null && length(v.last_attach_timestamp) > 0 }
}
output "compute_disks_last_detach_timestamp" {
  description = "Map of last_detach_timestamp values across all compute_disks, keyed the same as var.compute_disks except keys with no last_detach_timestamp are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.last_detach_timestamp if v.last_detach_timestamp != null && length(v.last_detach_timestamp) > 0 }
}
output "compute_disks_licenses" {
  description = "Map of licenses values across all compute_disks, keyed the same as var.compute_disks except keys with no licenses are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.licenses if v.licenses != null && length(v.licenses) > 0 }
}
output "compute_disks_name" {
  description = "Map of name values across all compute_disks, keyed the same as var.compute_disks except keys with no name are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_disks_params" {
  description = "Map of params values across all compute_disks, keyed the same as var.compute_disks except keys with no params are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_disks_physical_block_size_bytes" {
  description = "Map of physical_block_size_bytes values across all compute_disks, keyed the same as var.compute_disks except keys with no physical_block_size_bytes are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.physical_block_size_bytes if v.physical_block_size_bytes != null }
}
output "compute_disks_project" {
  description = "Map of project values across all compute_disks, keyed the same as var.compute_disks except keys with no project are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_disks_provisioned_iops" {
  description = "Map of provisioned_iops values across all compute_disks, keyed the same as var.compute_disks except keys with no provisioned_iops are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.provisioned_iops if v.provisioned_iops != null }
}
output "compute_disks_provisioned_throughput" {
  description = "Map of provisioned_throughput values across all compute_disks, keyed the same as var.compute_disks except keys with no provisioned_throughput are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.provisioned_throughput if v.provisioned_throughput != null }
}
output "compute_disks_self_link" {
  description = "Map of self_link values across all compute_disks, keyed the same as var.compute_disks except keys with no self_link are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_disks_size" {
  description = "Map of size values across all compute_disks, keyed the same as var.compute_disks except keys with no size are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.size if v.size != null }
}
output "compute_disks_snapshot" {
  description = "Map of snapshot values across all compute_disks, keyed the same as var.compute_disks except keys with no snapshot are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.snapshot if v.snapshot != null && length(v.snapshot) > 0 }
}
output "compute_disks_source_disk" {
  description = "Map of source_disk values across all compute_disks, keyed the same as var.compute_disks except keys with no source_disk are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_disk if v.source_disk != null && length(v.source_disk) > 0 }
}
output "compute_disks_source_disk_id" {
  description = "Map of source_disk_id values across all compute_disks, keyed the same as var.compute_disks except keys with no source_disk_id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_disk_id if v.source_disk_id != null && length(v.source_disk_id) > 0 }
}
output "compute_disks_source_image_encryption_key" {
  description = "Map of source_image_encryption_key values across all compute_disks, keyed the same as var.compute_disks except keys with no source_image_encryption_key are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => one(v.source_image_encryption_key) if v.source_image_encryption_key != null && length(v.source_image_encryption_key) > 0 }
  sensitive   = true
}
output "compute_disks_source_image_id" {
  description = "Map of source_image_id values across all compute_disks, keyed the same as var.compute_disks except keys with no source_image_id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_image_id if v.source_image_id != null && length(v.source_image_id) > 0 }
}
output "compute_disks_source_instant_snapshot" {
  description = "Map of source_instant_snapshot values across all compute_disks, keyed the same as var.compute_disks except keys with no source_instant_snapshot are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_instant_snapshot if v.source_instant_snapshot != null && length(v.source_instant_snapshot) > 0 }
}
output "compute_disks_source_instant_snapshot_id" {
  description = "Map of source_instant_snapshot_id values across all compute_disks, keyed the same as var.compute_disks except keys with no source_instant_snapshot_id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_instant_snapshot_id if v.source_instant_snapshot_id != null && length(v.source_instant_snapshot_id) > 0 }
}
output "compute_disks_source_snapshot_encryption_key" {
  description = "Map of source_snapshot_encryption_key values across all compute_disks, keyed the same as var.compute_disks except keys with no source_snapshot_encryption_key are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => one(v.source_snapshot_encryption_key) if v.source_snapshot_encryption_key != null && length(v.source_snapshot_encryption_key) > 0 }
  sensitive   = true
}
output "compute_disks_source_snapshot_id" {
  description = "Map of source_snapshot_id values across all compute_disks, keyed the same as var.compute_disks except keys with no source_snapshot_id are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_snapshot_id if v.source_snapshot_id != null && length(v.source_snapshot_id) > 0 }
}
output "compute_disks_source_storage_object" {
  description = "Map of source_storage_object values across all compute_disks, keyed the same as var.compute_disks except keys with no source_storage_object are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.source_storage_object if v.source_storage_object != null && length(v.source_storage_object) > 0 }
}
output "compute_disks_storage_pool" {
  description = "Map of storage_pool values across all compute_disks, keyed the same as var.compute_disks except keys with no storage_pool are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.storage_pool if v.storage_pool != null && length(v.storage_pool) > 0 }
}
output "compute_disks_terraform_labels" {
  description = "Map of terraform_labels values across all compute_disks, keyed the same as var.compute_disks except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "compute_disks_type" {
  description = "Map of type values across all compute_disks, keyed the same as var.compute_disks except keys with no type are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.type if v.type != null && length(v.type) > 0 }
}
output "compute_disks_users" {
  description = "Map of users values across all compute_disks, keyed the same as var.compute_disks except keys with no users are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.users if v.users != null && length(v.users) > 0 }
}
output "compute_disks_zone" {
  description = "Map of zone values across all compute_disks, keyed the same as var.compute_disks except keys with no zone are omitted"
  value       = { for k, v in google_compute_disk.compute_disks : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

