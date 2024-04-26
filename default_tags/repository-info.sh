# Copyright 2024 The Milton Hirsch Institute, B.V.
# SPDX-License-Identifier: Apache-2.0

template_root=`realpath $1`

name=`gh repo view --json name -q .name`
owner=`gh repo view --json owner -q .owner.login`
git_root=`git rev-parse --show-toplevel`
path=${template_root#"$git_root/"}

echo """
{
  \"name\": \"${name}\",
  \"owner\": \"${owner}\",
  \"path\": \"${path}\"
}
"""
