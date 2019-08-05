# Nondeterministic `genrule` example

Bazel permits arbitrary amounts of nondeterministic build outputs through
`genrule`s, which allow dependencies to be created on the fly. This example
demonstrates a build that creates a header file whose contents are extracted
from `/dev/urandom`.

## Steps to build

Just run:

```
$ bazel build //main:nondet-genrule
```
