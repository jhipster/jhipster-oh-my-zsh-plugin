# JHipster oh-my-zsh plugin

## Introduction

This plugin provides [JHipster](http://jhipster.github.io/) shortcuts commands for [oh-my-zsh](http://ohmyz.sh/).

Our plan is to add this plugin to the [official plugin list](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins).

## Usage

You need to add `jhipster` in your plugin list in your `.zshrc` file. For example:

    plugins=(git docker docker-compose jhipster)

And then you need to install the plugin itself, as it's not yet part of the official plugin list.

### Quick installation

Just run:

    cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/jhipster/jhipster-oh-my-zsh-plugin.git jhipster && cd ~ && . ~/.zshrc

### Detailed installation

- Clone this repository in your `~/.oh-my-zsh/custom/plugins` directory, using the `jhipster` directory name for storing this plugin
- Reload your oh-my-zsh configuration by running `. ~/.zshrc` in your home directory
