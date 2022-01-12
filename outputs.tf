output "cloud_init_config" {
    description = "Cloud-init config in plaintext."
    value = local.cloud_init_config
}

output "cloud_init_config_gzip" {
    description = "Cloud-init config base64 encoded and gzipped"
    value = base64gzip(local.cloud_init_config)
}