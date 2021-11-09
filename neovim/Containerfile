FROM docker.io/library/rust:latest AS rust
FROM quay.io/pierreprinetti/fedora-toolbox:34

# https://github.com/neovim/neovim/wiki/Building-Neovim#centos--rhel--fedora
RUN dnf install -y ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch gettext nodejs

COPY --from=rust \
	/usr/local/cargo/bin/rustc \
	/usr/local/cargo/bin/rustup \
	/usr/local/cargo/bin/cargo \
	/usr/bin/
