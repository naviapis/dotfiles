{ inputs, pkgs, ... }:

{
  imports = [
    inputs.nix-index-database.darwinModules.nix-index
    ./homebrew.nix
    ./zsh.nix
  ];

  environment = {
    pathsToLink = [
      "/share/antidote"
    ];
    shellAliases = {
      nds = "nh darwin switch ~/.dotfiles -H mac-mini";
    };
    systemPackages = with pkgs; [
      _1password-cli
      antidote
      bat
      delta
      dotbot
      eza
      fd
      ffmpeg
      fzf
      gh
      git
      jq
      lazydocker
      lazygit
      lazysql
      macism
      mise
      mysql-shell
      neovim
      nh
      ripgrep
      xdg-ninja
      yq
      zoxide
    ];
    systemPath = [
      "$HOME/.local/bin"
    ];
    variables = {
      EDITOR = "nvim";
      XDG_CACHE_HOME = "$HOME/.cache";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_DATA_HOME = "$HOME/.local/share";
      XDG_STATE_HOME = "$HOME/.local/state";
    };
  };
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    udev-gothic-nf
  ];
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  system.defaults = {
    dock.show-recents = false;
    finder = {
      FXDefaultSearchScope = "SCcf";
      ShowPathbar = true;
    };
    NSGlobalDomain = {
      AppleShowAllExtensions = true;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
    };
  };
}
