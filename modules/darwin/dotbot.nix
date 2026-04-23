{
  config,
  lib,
  pkgs,
  ...
}:

{
  system.activationScripts.postActivation.text = lib.mkAfter ''
    sudo \
      --user=${lib.escapeShellArg config.system.primaryUser} \
      --set-home \
      ${pkgs.runtimeShell} -c '
        ${lib.getExe pkgs.dotbot} -c "$HOME/.dotfiles/install.conf.yaml"
      '
  '';
}
