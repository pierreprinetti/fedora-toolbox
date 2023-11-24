#!/usr/bin/env bash

set -Eeuo pipefail

podman pull registry.fedoraproject.org/fedora-toolbox:39
podman build -t "quay.io/pierreprinetti/fedora-toolbox:39" .
