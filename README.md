# nickel-lazy-demo
Demo "laziness" of nickel and nix.

# Setup

Have `nix` installed. [instructions](https://nixos.org/download)

Run `nix develop` to start a dev shell that includes the nickel binary. 


# Demo

## Laziness in nickel

The file is `demo.ncl`. The `dirs.error_on_eval` key will result in division by zero error.

Exporting the entire file will cause the evaluation error:

```bash
nickel export demo.ncl
```

However, exporting only the `files.custom_bashrc` is fine:
```bash
nickel export demo.ncl --field files.custom_bashrc
```

## Laziness in nix

The file is `demo.nix`. Similarly, the `dirs.error_on_eval` key will result in division by zero error.

Evaluating the entire file will cause the evaluation error:

```bash
nix eval --file demo.nix
```

However, evaluating only the `files.custom_bashrc` is fine:
```bash
nix eval --file demo.nix files.custom_bashrc
```

