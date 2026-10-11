resource "google_compute_disk" "compute_disks" {
  for_each = var.compute_disks

  name                                  = each.value.name
  access_mode                           = each.value.access_mode
  architecture                          = each.value.architecture
  create_snapshot_before_destroy        = each.value.create_snapshot_before_destroy
  create_snapshot_before_destroy_prefix = each.value.create_snapshot_before_destroy_prefix
  deletion_policy                       = each.value.deletion_policy
  description                           = each.value.description
  enable_confidential_compute           = each.value.enable_confidential_compute
  image                                 = each.value.image
  labels                                = each.value.labels
  licenses                              = each.value.licenses
  physical_block_size_bytes             = each.value.physical_block_size_bytes
  project                               = each.value.project
  provisioned_iops                      = each.value.provisioned_iops
  provisioned_throughput                = each.value.provisioned_throughput
  size                                  = each.value.size
  snapshot                              = each.value.snapshot
  source_disk                           = each.value.source_disk
  source_instant_snapshot               = each.value.source_instant_snapshot
  source_storage_object                 = each.value.source_storage_object
  storage_pool                          = each.value.storage_pool
  type                                  = each.value.type
  zone                                  = each.value.zone

  dynamic "async_primary_disk" {
    for_each = each.value.async_primary_disk != null ? [each.value.async_primary_disk] : []
    content {
      disk = async_primary_disk.value.disk
    }
  }

  dynamic "disk_encryption_key" {
    for_each = each.value.disk_encryption_key != null ? [each.value.disk_encryption_key] : []
    content {
      kms_key_self_link            = disk_encryption_key.value.kms_key_self_link
      kms_key_service_account      = disk_encryption_key.value.kms_key_service_account
      raw_key                      = disk_encryption_key.value.raw_key
      raw_key_wo                   = disk_encryption_key.value.raw_key_wo
      raw_key_wo_version           = disk_encryption_key.value.raw_key_wo_version
      rsa_encrypted_key            = disk_encryption_key.value.rsa_encrypted_key
      rsa_encrypted_key_wo         = disk_encryption_key.value.rsa_encrypted_key_wo
      rsa_encrypted_key_wo_version = disk_encryption_key.value.rsa_encrypted_key_wo_version
    }
  }

  dynamic "guest_os_features" {
    for_each = each.value.guest_os_features != null ? each.value.guest_os_features : []
    content {
      type = guest_os_features.value.type
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "source_image_encryption_key" {
    for_each = each.value.source_image_encryption_key != null ? [each.value.source_image_encryption_key] : []
    content {
      kms_key_self_link       = source_image_encryption_key.value.kms_key_self_link
      kms_key_service_account = source_image_encryption_key.value.kms_key_service_account
      raw_key                 = source_image_encryption_key.value.raw_key
    }
  }

  dynamic "source_snapshot_encryption_key" {
    for_each = each.value.source_snapshot_encryption_key != null ? [each.value.source_snapshot_encryption_key] : []
    content {
      kms_key_self_link       = source_snapshot_encryption_key.value.kms_key_self_link
      kms_key_service_account = source_snapshot_encryption_key.value.kms_key_service_account
      raw_key                 = source_snapshot_encryption_key.value.raw_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

