# DotFiles

Personal zsh configuration

## Installation
While in this folder, run:

```sh
for dot_file in "$(pwd)"/^(README.md|LICENSE)(.N); do
  ln -s "$dot_file" "${ZDOTDIR:-$HOME}/.${dot_file:t}"
done

for config_dir in "$(pwd)"/config/*/; do
  ln -s "$config_dir" "${ZDOTDIR:-$HOME}/.config/${config_dir:t}"
done
```
