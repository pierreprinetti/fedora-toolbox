# Fedora-toolbox

A customised Fedora [Toolbox](https://github.com/containers/toobox) image.

Installs (with dnf):

* [zsh](http://zsh.sourceforge.net) (and sets ZDOTDIR to XDG_CONFIG_HOME)
* [autojump](https://github.com/wting/autojump)
* [fd](https://github.com/sharkdp/fd)
* [ripgrep](https://github.com/BurntSushi/ripgrep)

Use with:

```shell
toolbox create -i quay.io/pierreprinetti/fedora-toolbox
```
