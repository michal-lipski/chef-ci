name "base"
description "Base role applied to all nodes"

run_list(
  "recipe[apt]",
  "recipe[java]",
"role[chef-client]"
)

