# Setup Zsh on any posix platform including Cygwin and WSL

Note: For Cygwin we could skip the sudo on all the commands.

## Install Zsh and tmux:
Some of tools we are trying could already be installed, if not they will be installed.

Fedora: sudo dnf install zsh tmux
Mac: brew install zsh tmux
RHEL/CentOS: sudo yum update && sudo yum -y install zsh
Ubuntu/Debian: sudo apt install zsh tmux
Cygwin: apt-cyg install zsh tmux


The following page has more information for other platforms: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-in-many-platforms


## Change the shell Zsh
```
chsh -s $(which zsh)
```
On Cygwin we would need to update the property of the shortcut to start zsh instead of bash.

## Install oh-my-zsh.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## zsh-autosuggestions
Provides auto completion for shell commands.

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
## zsh-syntax-highlighting
Provides syntax highlighting on the shell.

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Fasd
Fasd offers quick access to files and directories for POSIX shells.

```
git clone https://github.com/clvv/fasd.git
cd fasd
sudo make install
```

Install make if doesn't already exit:
```
sudo apt install make
```

pkconfig/zsh/profile contains the configuration to set it up.

## Install fonts

Download Firacode or Saucecode pro fonts from https://www.nerdfonts.com/font-downloads


## Setup Powerlever10K theme
```
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Setup ~/.zshrc
```
export TERM="xterm-256color" # This sets up colors properly

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_MAGIC_FUNCTIONS=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
COMPLETION_WAITING_DOTS=true
DISABLE_UNTRACKED_FILES_DIRTY=true
```
## Enable plugins in ~/.zshrc
plugins=(dnf git npm zsh-autosuggestions zsh-syntax-highlighting)

Restart your terminal or relogin to start the powerlevel10k config.

## Setup PKCONFIG and PKDATA environment variable
Put the following entries in .zshrc. and use absolute path for it.
```
export PKCONFIG='<path to config>'
export PKDATA='<path to pkdata>'
```

## Install fd-find:
```
sudo apt install fd-find
```
## Install ripgrep from https://github.com/BurntSushi/ripgrep

On Ubuntu:
```
sudo apt-get install ripgrep
```

On Windows:
```
choco install ripgrep
```

## Install FZF from https://github.com/junegunn/fzf
Install and make sure fzf and fzf-tmux is in the path:

Ubuntu:
```
sudo apt-get install fzf
```

Windows:
Use choco to intall on Windows. First make sure the choco source is setup properly:
```
choco source add -n=choco -s="https://chocolatey.org/api/v2/package/" --priority=1
```
Then install:
```
choco install fzf
```

The best way to setup the fzf is :
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

#### FZF and ripgrep config:

Make sure the enviroment variable has the following set. On Windows we need to set this environment variable. For all the other platform it should come from pkconfig/zsh/profile.

```
FZF_DEFAULT_COMMAND=Rg --files --hidden --follow --glob "!.git"
```

.vimrc (vimplug.vim) already has fzf plugin config and Ctrl-p config to use FZF for it.
```
Plug 'junegunn/fzf'
```


