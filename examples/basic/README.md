# Create a basic cloud-init config
This example uses two local files: `cloud-init.yaml` and `startup-script.sh` to create a multipart MIME cloud-init configuration. The resulting configuration is written out as a plaintext file and a base64 encoded gzip file. Instead of saving the content as a file, it could instead by used as the value for a `user_data` or `custom_data` argument on a compute instance.

You can run this example as is by doing the following:

```bash
terraform init
terraform apply -auto-approve
```