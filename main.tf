locals {

    cloud_init_parts_rendered = [ for part in var.cloudinit_parts : <<EOF
--MIMEBOUNDARY
Content-Transfer-Encoding: 7bit
Content-Type: ${part.content-type}
Mime-Version: 1.0

${templatefile(part.filepath, part.vars)}
    EOF
    ]

    cloud_init_config = templatefile("${path.module}/cloud-init.tpl", {cloud_init_parts = local.cloud_init_parts_rendered})
}