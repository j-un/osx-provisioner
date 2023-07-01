# osx-provisioner

- **Now I use chezmoi to provision my environment.**
  - ref. https://github.com/j-un/dotfiles
- **This repository will no longer be updated soon.**

---

## What's this

- macOS provisioner just for me.

## Prerequisite

1. XCode

```
$ xcode-select --install
```

1. Homebrew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

1. python

- https://github.com/pyenv/pyenv#installation
- `$ pyenv install x.x.x`
- `$ pyenv global x.x.x`

1. ansible

```
$ brew install ansible
```

## Install

1. Clone this repository on any directory.

```
$ git clone https://github.com/j-un/osx-provisioner.git
```

## Usage

- That's all

```
$ make
```

- Dry run

```
$ make test
```

- Only packages install/update

```
$ make packages
```

- etc...

```
$ make dot
$ make fonts
$ make zsh
$ make vim
$ make tools
```
