# Copyright 2024 The Milton Hirsch Institute, B.V.
# SPDX-License-Identifier: Apache-2.0

data "external" "repository_info" {
  program = [
    "bash",
    "${path.module}/repository-info.sh",
    path.root
  ]
  working_dir = path.root
}
