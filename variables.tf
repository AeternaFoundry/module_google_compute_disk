variable "compute_disks" {
  description = <<EOT
Map of compute_disks, attributes below
Required:
    - name
Optional:
    - access_mode
    - architecture
    - create_snapshot_before_destroy
    - create_snapshot_before_destroy_prefix
    - deletion_policy
    - description
    - enable_confidential_compute
    - image
    - labels
    - licenses
    - physical_block_size_bytes
    - project
    - provisioned_iops
    - provisioned_throughput
    - size
    - snapshot
    - source_disk
    - source_instant_snapshot
    - source_storage_object
    - storage_pool
    - type
    - zone
    - async_primary_disk (block):
        - disk (required)
    - disk_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
        - raw_key_wo (optional)
        - raw_key_wo_version (optional)
        - rsa_encrypted_key (optional)
        - rsa_encrypted_key_wo (optional)
        - rsa_encrypted_key_wo_version (optional)
    - guest_os_features (block):
        - type (required)
    - params (block):
        - resource_manager_tags (optional)
    - source_image_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
    - source_snapshot_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                                  = string
    access_mode                           = optional(string)
    architecture                          = optional(string)
    create_snapshot_before_destroy        = optional(bool)
    create_snapshot_before_destroy_prefix = optional(string)
    deletion_policy                       = optional(string)
    description                           = optional(string)
    enable_confidential_compute           = optional(bool)
    image                                 = optional(string)
    labels                                = optional(map(string))
    licenses                              = optional(list(string))
    physical_block_size_bytes             = optional(number)
    project                               = optional(string)
    provisioned_iops                      = optional(number)
    provisioned_throughput                = optional(number)
    size                                  = optional(number)
    snapshot                              = optional(string)
    source_disk                           = optional(string)
    source_instant_snapshot               = optional(string)
    source_storage_object                 = optional(string)
    storage_pool                          = optional(string)
    type                                  = optional(string)
    zone                                  = optional(string)
    async_primary_disk = optional(object({
      disk = string
    }))
    disk_encryption_key = optional(object({
      kms_key_self_link            = optional(string)
      kms_key_service_account      = optional(string)
      raw_key                      = optional(string)
      raw_key_wo                   = optional(string)
      raw_key_wo_version           = optional(string)
      rsa_encrypted_key            = optional(string)
      rsa_encrypted_key_wo         = optional(string)
      rsa_encrypted_key_wo_version = optional(string)
    }))
    guest_os_features = optional(list(object({
      type = string
    })))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    source_image_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
    }))
    source_snapshot_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

