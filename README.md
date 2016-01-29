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

## Usage
```
$ ansible-playbook macbook.yml -i "localhost," -K
```
