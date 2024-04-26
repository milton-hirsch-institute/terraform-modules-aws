# Copyright 2024 The Milton Hirsch Institute, B.V.
# SPDX-License-Identifier: Apache-2.0

template_root=`realpath $1` || exit 1

name=`gh repo view --json name -q .name` || exit 1
owner=`gh repo view --json owner -q .owner.login` || exit 1
git_root=`git rev-parse --show-toplevel` || exit 1
path=${template_root#"$git_root/"} || exit 1

echo """
{
  \"name\": \"${name}\",
  \"owner\": \"${owner}\",
  \"path\": \"${path}\"
}
"""
