FROM registry.fedoraproject.org/fedora-toolbox:34

LABEL maintainer="Pierre Prinetti <pierreprinetti@redhat.com>"

RUN dnf -y upgrade
RUN dnf -y install zsh tmux autojump-zsh fd-find ripgrep fzf make golang

RUN echo 'export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"' >> /etc/zshenv
