# Parts to generate for cloud init
variable "cloudinit_parts" {
  description = <<EOF
(Required) A list of maps that contain the information for each part in the cloud-init configuration.

Each map should have the following fields:
* content-type - type of content for this part, e.g. text/x-shellscript
* filepath - path to the file to use as a template
* vars - map of variables to use with the part template
  EOF

  type = list(object({
      content-type = string
      filepath =  string
      vars = map(string)
  }))
}