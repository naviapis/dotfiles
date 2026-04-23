{ inputs, ... }:

{
  imports = [
    inputs.self.darwinModules.darwin-shared
  ];

  homebrew.casks = [
    "bruno"
    "moom"
    "utm"
  ];
  nixpkgs.hostPlatform = "aarch64-darwin";
  system = {
    primaryUser = "haruki";
    stateVersion = 6;
  };
}
