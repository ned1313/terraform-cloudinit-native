# terraform-cloudinit-native
A Terraform module to generate cloud-init multipart content natively without a provider plugin or data source.

## Usage

```hcl
module "cloud_init_config" {
  source = "ned1313/native/cloud-init"

  cloudinit_parts = [
    {
      filepath = "cloud-init.yaml"
      content-type = "text/cloud-config"
      vars = {
        package_update  = "true"
        package_upgrade = "false"
      }
    }
  ]
}
```

## Notes

This module is meant to help replace the use of the `template_cloudinit_config` data source which has been archived along with the rest of the `template` provider. You could use the `cloudinit` provider instead, but this module uses native functions only and executes faster.