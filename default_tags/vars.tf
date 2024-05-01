# Copyright 2024 The Milton Hirsch Institute, B.V.
# SPDX-License-Identifier: Apache-2.0

variable "prefix" {
  type        = string
  description = "Organization prefix"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags to add to the outputs - takes precedence"
  default     = {}
}
