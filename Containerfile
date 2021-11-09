FROM registry.fedoraproject.org/fedora-toolbox:35

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN dnf -y upgrade
RUN dnf -y install \
	autojump-zsh \
	fd-find \
	fzf \
	glances \
	make \
	mosh \
	ripgrep \
	tmate \
	tmux \
	wl-clipboard \
	zsh

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
