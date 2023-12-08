let ops = {
  dirs = {
    root = "./ops",
    configs = "%{root}/configs",
    error_on_eval = 1/0,
  },
  files = {
    custom_bashrc = "%{dirs.configs}/custom.bashrc",
  }
}
in ops
