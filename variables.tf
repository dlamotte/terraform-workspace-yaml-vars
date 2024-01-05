locals {
  vars = yamldecode(file("vars/${terraform.workspace}.yaml"))

  # hacky method to add 'validation' for any values in the yaml
  assert_hello = lookup(local.vars, "hello", "") != "" ? "" : file("error: hello is not set")
}
