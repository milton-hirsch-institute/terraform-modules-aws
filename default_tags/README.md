<!--
 Copyright 2024 The Milton Hirsch Institute, B.V.
 SPDX-License-Identifier: Apache-2.0
 -->

# Default tag generation

This module is useful for creating a set of default tags to associate with an AWS provider. It provides
information to AWS console browsers about how the resource was created and where to find the terraform template
that is used to manage it.

## Example usage

```hcl
module "tags" {
  source = "github.com/milton-hirsch-institute/terraform-modules-aws/default_tags"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = module.tags.tags
  }
}
```
