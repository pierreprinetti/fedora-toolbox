FROM registry.fedoraproject.org/fedora-toolbox:35

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN dnf -y upgrade
RUN dnf -y install \
	fd-find \
	fzf \
	glances \
	make \
	mosh \
	neovim \
	ripgrep \
	task \
	tmate \
	tmux \
	wl-clipboard \
	zsh \
	z

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
