{
  homebrew = {
    enable = true;
    enableZshIntegration = true;
    casks = [
      "chatgpt"
      "codex-app"
      "datagrip"
      "dockdoor"
      "docker-desktop"
      "dropbox"
      "flux-app"
      "ghostty"
      "google-chrome"
      "karabiner-elements"
      "notunes"
      "pearcleaner"
      "raycast"
      "slack"
      "tailscale-app"
      "visual-studio-code"

      # Paid
      "bartender"
      "default-folder-x"
      "istat-menus"
      "launchos"
      "mission-control-plus"
      "popclip"

      # Subscription
      "1password"
      "cleanshot"
      "vpn-tracker-365"
    ];
    masApps = {
      "Amphetamine" = 937984704;
      "Developer" = 640199958;
      "Xcode" = 497799835;

      # Paid
      "Dato" = 1470584107;
      "UpNote" = 1398373917;
    };
    onActivation = {
      autoUpdate = true;
      cleanup = "check";
      upgrade = true;
    };
  };
}
