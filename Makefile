extra-vars := "env=work ansible_python_interpreter=$(shell pyenv prefix)/bin/python"

all:
	brew upgrade ansible
	ansible-playbook osx.yml -i "localhost," -K --extra-vars $(extra-vars)

test:
	ansible-playbook osx.yml -i "localhost," -K -C -D -v --extra-vars $(extra-vars)

packages:
	ansible-playbook osx.yml -i "localhost," --tags=packages --extra-vars $(extra-vars)

fonts:
	ansible-playbook osx.yml -i "localhost," --tags=fonts -K --extra-vars $(extra-vars)

zsh:
	ansible-playbook osx.yml -i "localhost," --tags=zsh -K --extra-vars $(extra-vars)

dot:
	ansible-playbook osx.yml -i "localhost," --tags=dotfiles --extra-vars $(extra-vars)

vim:
	ansible-playbook osx.yml -i "localhost," --tags=vim --extra-vars $(extra-vars)

tools:
	ansible-playbook osx.yml -i "localhost," --tags=tools --extra-vars $(extra-vars)

defaults:
	ansible-playbook osx.yml -i "localhost," --tags=defaults --extra-vars $(extra-vars)