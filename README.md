## What's this
* OSX provisioner just for me.

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
$ git clone https://github.com/mapps-jtanaka/osx-provisioner.git
```

## Usage
* Exec all
```
$ make
```

* Dry run
```
$ make test
```

* Only "brew install/update"
```
$ make brew
```

* etc...
```
$ make dot
$ make fonts
$ make zsh
```
