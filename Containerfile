FROM registry.fedoraproject.org/fedora-toolbox:36

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN \
	dnf -y upgrade \
	&& dnf -y install \
		fd-find \
		fzf \
		make \
		mosh \
		neovim \
		python3-neovim \
		ripgrep \
		task \
		tmate \
		tmux \
		wl-clipboard \
		zsh \
		z

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
