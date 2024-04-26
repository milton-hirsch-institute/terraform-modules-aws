# Copyright 2024 The Milton Hirsch Institute, B.V.
# SPDX-License-Identifier: Apache-2.0

output "tags" {
  value = {
    "${var.prefix}:provisioner"              = "terraform"
    "${var.prefix}:provisioner:github-name"  = data.external.repository_info.result.name,
    "${var.prefix}:provisioner:github-owner" = data.external.repository_info.result.owner,
    "${var.prefix}:provisioner:git-path"     = data.external.repository_info.result.path,
  }
}
