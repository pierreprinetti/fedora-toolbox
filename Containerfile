FROM docker.io/library/rust:latest AS rust
FROM registry.fedoraproject.org/fedora-toolbox:40

COPY --from=rust \
	/usr/local/cargo/bin/rustc \
	/usr/local/cargo/bin/rustup \
	/usr/local/cargo/bin/cargo \
	/usr/bin/

RUN \
	dnf -y upgrade \
	&& dnf -y install \
		entr \
		fd-find \
		foot-terminfo \
		fzf \
		make \
		mosh \
		neovim \
		pass \
		python-unversioned-command \
		python3-neovim \
		restic \
		ripgrep \
		task \
		tmate \
		tmux \
		wl-clipboard \
		z \
		zsh \
		zstd

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
RUN curl -sS https://starship.rs/install.sh | sh /dev/stdin --yes

RUN \
	dnf -y upgrade \
	&& dnf -y install \
		ShellCheck \
		ansible \
		bind-utils \
		ctags \
		gcc-c++ \
		gettext \
		golang \
		jq \
		nodejs \
		openssl-devel \
		python3-devel \
		python3-octaviaclient \
		python3-pip \
		vim-common

RUN npm install -g yaml-language-server
RUN go install golang.org/x/tools/gopls@latest
