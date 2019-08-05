#!/bin/bash
set +x

BAZEL=$1
TARGET=$2

for suffix in {first,second}; do
  ${BAZEL} clean && ${BAZEL} build ${TARGET} --subcommands && hashdeep -lr bazel-genfiles/ > out.${suffix}
done

hashdeep -ravvl -k out.first bazel-genfiles/
