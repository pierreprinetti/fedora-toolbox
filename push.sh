#!/usr/bin/env bash

set -Eeuo pipefail

podman push quay.io/pierreprinetti/fedora-toolbox:36

for image in code keybase restic; do
	podman push "quay.io/pierreprinetti/fedora-toolbox:36-${image}"
done
