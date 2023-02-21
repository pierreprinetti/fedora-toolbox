#!/usr/bin/env bash

set -Eeuo pipefail

podman pull registry.fedoraproject.org/fedora-toolbox:37

for image in code keybase restic; do
	podman build -t "quay.io/pierreprinetti/fedora-toolbox:37-${image}" -f "${image}/Containerfile" .
done
