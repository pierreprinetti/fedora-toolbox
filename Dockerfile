FROM registry.fedoraproject.org/fedora-toolbox:34

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN dnf install -y zsh tmux autojump-zsh fd-find ripgrep fzf

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
