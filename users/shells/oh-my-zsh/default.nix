{ config, pkgs, ... }:

{
  ##  ZSH Configuration  ##
  programs.zsh.interactiveShellInit = ''
    COMPUTER="atom";
    ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/                    # OMZ install
    HISTFILE=$HOME/Computer/Profiles/oh-my-zsh/zsh_history
    ZSH_CUSTOM=$HOME/Computer/Profiles/oh-my-zsh/custom       # OMZ directory
    ZSH_THEME="af-magic"
    DISABLE_AUTO_UPDATE=true

    plugins=(git systemd ruby gem history sudo node npm nvm zsh-autosuggestions )

    source $ZSH/oh-my-zsh.sh

    ## -------- MISC -------- ##

    export XDG_CONFIG_HOME=$HOME/.config
    export ELECTRON_TRASH=kioclient5
    export EDITOR="nano"
    export XENVIRONMENT=$HOME/.Xdefaults
  '';

  programs.zsh.promptInit = "";
}