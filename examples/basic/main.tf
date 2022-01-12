module "cloud_init_config" {
  source = "../.."

  cloudinit_parts = [
    {
      filepath = "cloud-init.yaml"
      content-type = "text/cloud-config"
      vars = {
        package_update  = "true"
        package_upgrade = "false"
      }
    },
    {
        filepath = "startup-script.sh"
            content-type = "text/x-shellscript"
            vars = {
                name = "Arthur"
            }
    }
  ]
}

resource "local_file" "cloud_init_plaintext" {
  filename    = "cloud_init_plaintext.txt"
  content = module.cloud_init_config.cloud_init_config
}

resource "local_file" "cloud_init_gzip" {
  filename    = "cloud_init_plaintext.zip"
  content = module.cloud_init_config.cloud_init_config_gzip
}