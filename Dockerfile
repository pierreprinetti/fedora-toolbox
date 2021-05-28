FROM registry.fedoraproject.org/fedora-toolbox:34

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN dnf -y upgrade
RUN dnf -y install \
	ShellCheck \
	autojump-zsh \
	bind-utils \
	fd-find \
	fzf \
	git-crypt \
	glances \
	golang \
	make \
	ripgrep \
	tmate \
	tmux \
	wl-clipboard \
	zsh

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
