{
  programs.zsh = {
    enable = true;
    enableCompletion = false;
    histFile = "$XDG_STATE_HOME/zsh/zsh_history";
    promptInit = "";
    variables = {
      ZDOTDIR = "$XDG_CONFIG_HOME/zsh";
    };
  };
}
