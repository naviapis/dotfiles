{ inputs, ... }:

{
  imports = [
    inputs.self.darwinModules.darwin-shared
  ];
}
