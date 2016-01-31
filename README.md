## What's this
* OSX provisioner just for me.

## Description


## Prerequisite Tasks
1. Install Homebrew and Ansible.
```
$ sudo xcodebuild -license
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
$ brew install python ansible
```

## Install
1. Clone this repository on any directory.
```
$ git clone git@github.com:mapps-jtanaka/osx-provisioner.git
```

## Usage
1. Exec all
```
$ make
```

1. Dry run
```
$ make test
```

1. Only "brew install/update"
```
$ make brew
```

1. etc...
```
$ make dot
$ make fonts
$ make zsh
```
