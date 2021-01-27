# Windows Setup

These are my notes for installing and setting up dev environment on Windows. To get posix environment environment there are few options:
1. MSYS2 - This worked better with FZF and zsh
1. Cygwin
1. WSL


### Install fonts
Install Sauce Code Nerd Font from https://github.com/ryanoasis/nerd-fonts.

For Windows, download the archive for the latest fonts - unzip and copy the for Windows fonts to the C:\Windows\fonts. You can also open the font folder with Win+r and type fonts.

## Setting up Cygwin for Windows

#### Install
Cygwin is a very good option to run a full featured Zsh on Windows. To install it, download the latest [setup.exe](https://cygwin.com/setup-x86_64.exe) from its [website](https://cygwin.com/install.html). While installing make sure to select wget to install.

#### Install apt-cyg package manager
```
wget rawgit.com/transcode-open/apt-cyg/master/apt-cyg
install apt-cyg /bin
```

## Setting up WSL

### Terminal
WSLtty seems like a good choice for the terminal on Windows. Install it from: [Wsltty](https://github.com/mintty/wsltty/releases)

Configure it - right click on the top left icon and select option.
Looks->Theme->Dracula
Text -> font: SauceCodePro NF, 11  ; These are the font we installed above.
Mouse->default click target -> Window
Terminal->Type xterm-256

For Windows terminal (if we are using it), update the fonts in the terminal settings with:

```
    "fontFace" : "SauceCodePro NF",
```

### Update the home directory

1. sudo usermod -d /newhome/username -m username
1. OR update the /etc/passwd

## Shell

[Setup Zsh](SetupZsh.md)

Setup Powershell

