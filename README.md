.dot2
==========

A .dot file compilation for `MacOS` which does the heavy listing of setting the (almost) the entire system up, using relative paths, containing everything inside, so doing a complete reinstall should be as simple as doing a `git clean -xdf && git reset --hard HEAD` and updating should be as easy as running `git submodule update`

This comes prepacked with

* android-sdk
* default apps (global)
* byobu-config
* dotnet
* golang
* node (nvm)
* oh-my-zsh
* powershell
* python (pyenv)
* ruby (rvm)
* custom scripts
* vim (nvim)
* vscode

Be aware: All tools are installed locally (if not marked global), but it might install dependencies system wide if not available. Search this project for `require.sh` to find all system wide tools

Be aware: Everything is relative to this directory, so doing a clean will also remove everything including but not limited to vscode configs and extensions.