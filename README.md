# osx-provisioner

## What's this
* macOS provisioner just for me.

## Prerequisite Tasks
1. Install Homebrew and Ansible.
```
$ sudo xcode-select --install
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
$ brew install python ansible
```

## Install
1. Clone this repository on any directory.
```
$ git clone https://github.com/j-un/osx-provisioner.git
```

## Usage
* That's all
```
$ make
```

* Dry run
```
$ make test
```

* Only packages install/update
```
$ make packages
```

* etc...
```
$ make dot
$ make fonts
$ make zsh
$ make vim
```
