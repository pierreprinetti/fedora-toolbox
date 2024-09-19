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
		ShellCheck \
		ansible \
		awscli \
		bind-utils \
		ctags \
		entr \
		fd-find \
		foot-terminfo \
		fzf \
		gcc-c++ \
		gettext \
		golang \
		jq \
		make \
		mosh \
		neovim \
		nodejs \
		openssl-devel \
		pass \
		python-unversioned-command \
		python3-devel \
		python3-manilaclient \
		python3-neovim \
		python3-octaviaclient \
		python3-openstackclient \
		python3-pip \
		restic \
		ripgrep \
		task \
		tmate \
		tmux \
		vim-common \
		wl-clipboard \
		z \
		zsh \
		zstd

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
RUN curl -sS https://starship.rs/install.sh | sh /dev/stdin --yes

RUN npm install -g yaml-language-server
RUN go install golang.org/x/tools/gopls@latest
