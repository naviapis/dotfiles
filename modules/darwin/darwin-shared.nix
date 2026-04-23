{ pkgs, ... }:

{
  imports = [
    ./dotbot.nix
    ./homebrew.nix
    ./macos.nix
    ./zsh.nix
  ];

  environment = {
    pathsToLink = [
      "/share/antidote"
    ];
    systemPackages = with pkgs; [
      antidote
      bat
      direnv
      eza
      fd
      fzf
      gh
      git
      herdr
      lazygit
      mas
      mise
      neovim
      nh
      ripgrep
      xdg-ninja
      zoxide
    ];
  };
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.hostPlatform = "aarch64-darwin";
  system = {
    primaryUser = "haruki";
    stateVersion = 6;
  };
}
