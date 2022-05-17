#!/usr/bin/env bash

set -Eeuo pipefail

podman pull registry.fedoraproject.org/fedora-toolbox:36
podman pull docker.io/library/rust:latest

podman build -t quay.io/pierreprinetti/fedora-toolbox:36 .

for image in code keybase restic; do
	podman build -t "quay.io/pierreprinetti/fedora-toolbox:36-${image}" -f "${image}/Containerfile" .
done
