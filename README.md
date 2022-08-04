# DotFiles

Personal zsh configuration

## Installation
While in this folder, run:

```sh
for rcfile in "$(pwd)"/^(README.md|LICENSE)(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```