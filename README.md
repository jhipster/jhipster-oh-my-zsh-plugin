# JHipster oh-my-zsh plugin

## Introduction

This plugin provides [JHipster](http://jhipster.github.io/) shortcuts commands for [oh-my-zsh](http://ohmyz.sh/).

Our plan is to add this plugin to the [official plugin list](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins).

## Installation

jhipster can be used with [oh-my-zsh](http://ohmyz.sh/)-compatible zsh frameworks.

### oh-my-zsh

If you're using [oh-my-zsh](github.com/robbyrussell/oh-my-zsh):

1. Edit your `~/.zshrc` and add `jhipster` – same as clone directory – to the list of plugins to enable:

    `plugins=( ... jhipster )`

2. In the command line, change to _oh-my-zsh_'s custom plugin directory and clone the repository:

    `cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/jhipster/jhipster-oh-my-zsh-plugin.git jhipster && cd && . ~/.zshrc`

### Antigen

If you're using [Antigen](https://github.com/zsh-users/antigen):

1. Add `antigen bundle jhipster/jhipster-oh-my-zsh-plugin` to your `.zshrc` where you've listed your other plugins.
2. Close and reopen your Terminal/iTerm window to **refresh context** and use the plugin. Alternatively, you can run `antigen bundle jhipster/jhipster-oh-my-zsh-plugin` in a running shell to have antigen clone and load *jhipster*.

### zgen

If you're using [zgen](https://github.com/tarjoilija/zgen):

1. Add `zgen load jhipster/jhipster-oh-my-zsh-plugin` to your `.zshrc` along with your other `zgen load` commands.
2. `rm ${ZGEN_INIT}/init.zsh && zgen save`
