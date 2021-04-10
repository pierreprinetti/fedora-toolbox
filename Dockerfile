FROM registry.fedoraproject.org/f33/fedora-toolbox:33

RUN dnf install -y zsh autojump-zsh fd-find ripgrep

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
