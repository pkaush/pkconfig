# Windows Setup

These are my notes for installing and setting up dev environment on Windows. To get posix environment environment there are few options:
1. Cygwin
2. WSL - 1


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

#### Update the Windows terminal as:

The following example is for MSYS

```
   {
                "name" : "Cygwin-zsh",
                // "acrylicOpacity" : 0.95,
                "closeOnExit" : true,
                "colorScheme" : "Campbell",
                "commandline" : "C:/Cygwin/bin/zsh.exe --login -i",
                "fontFace" : "SauceCodePro NF",
                // "fontFace" : "Source Code Pro",
                "fontSize" : 11,
                "guid": "{bfaa3a4a-54b2-4c51-8ea8-d970bb499e74}",
                "historySize" : 9001,
                "icon" : "C:/cygwin/Cygwin-Terminal.ico",
                "padding" : "0, 0, 0, 0",
                "snapOnInput" : true,
                "useAcrylic" : false 
            },

```

For MSYS2 (Update the icon and other cygwin details.
```
           {
                "name" : "MSYS2",
                "acrylicOpacity" : 0.90,
                "closeOnExit" : true,
                "colorScheme" : "One Half Dark",
                "commandline" : "C:/msys64/usr/bin/zsh.exe --login -i",
                "fontFace" : "SauceCodePro NF",
                "fontSize" : 11,
                "guid": "{bfaa3a4a-54b2-4c52-8ea8-d970bb499e76}",
                "historySize" : 9001,
                "icon" : "C:/msys64/mingw64.ico",
                "padding" : "0, 0, 0, 0",
                "snapOnInput" : true,
                "useAcrylic" : true
            },
```

## Setting up WSL

### Terminal

For Windows terminal, update the fonts in the terminal settings with:

```
           {
                "name" : "MSYS2",
                "acrylicOpacity" : 0.90,
                "closeOnExit" : true,
                "colorScheme" : "One Half Dark",
                "commandline" : "C:/msys64/usr/bin/zsh.exe --login -i",
                "fontFace" : "SauceCodePro NF",
                "fontSize" : 11,
                "guid": "{bfaa3a4a-54b2-4c52-8ea8-d970bb499e76}",
                "historySize" : 9001,
                "icon" : "C:/cygwin/Cygwin-Terminal.ico",
                "padding" : "0, 0, 0, 0",
                "startingDirectory": "C:/cygwin/home/puneetk",
                "snapOnInput" : true,
                "useAcrylic" : true
            },
```

WSLtty is another good choice for the terminal on Windows. Install it from: [Wsltty](https://github.com/mintty/wsltty/releases)

Configure it - right click on the top left icon and select option.
Looks->Theme->Dracula
Text -> font: SauceCodePro NF, 11  ; These are the font we installed above.
Mouse->default click target -> Window
Terminal->Type xterm-256

### Update the home directory

1. sudo usermod -d /newhome/username -m username
1. OR update the /etc/passwd
## Shell

[Setup Zsh](SetupZsh.md)

##

Setup Powershell

