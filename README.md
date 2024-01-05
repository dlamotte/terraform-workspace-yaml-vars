# terraform per-workspace 'vars' via yaml

Example method to commit terraform variables per-workspace when managing
static infra. Validation is a bit hacky (uses `file()` function as a way to
'panic' execution with the filename posing as the error string).

# try it out

```
terraform apply -auto-approve
```

See `hello world` in output of provisioner for `hello` resource.

```
terraform workspace new blah
terraform apply -auto-approve
```

Fails with error in `file(...)`.

```
terraform workspace new random
terraform apply -auto-approve
```

Fails as there are no variables.
