# configfiles

---

My config files for WSL

[![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?&style=for-the-badge&logo=vim&logoColor=white)](https://www.vim.org/)
[![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)](https://neovim.io/)
[![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![ Zsh ](https://img.shields.io/badge/zsh-4AAE46?style=for-the-badge&logo=fish&logoColor=white)](https://ohmyz.sh/)
[![Fish](https://img.shields.io/badge/fish-4AAE46?style=for-the-badge&logo=fish&logoColor=white)](https://fishshell.com/)
[![Tmux](https://img.shields.io/badge/tmux-1BB91F?style=for-the-badge&logo=tmux&logoColor=white)](https://github.com/tmux/tmux/wiki)

## Things I observed

- choose zsh theme wisely (folks prefer powerlevel10k for its performance)
  otherwise prompt wait time increases way too much.
- to troubleshoot fish_config, check pinging the corresponding localhost
  if it doesn't work, then downgrade wsl to wsl1 and upgrade back to wsl2
- packages can be uninstalled with sudo apt-get --purge remove <package>
