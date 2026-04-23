{
  homebrew = {
    enable = true;
    brews = [
      # https://github.com/jdx/vfox-php
      "autoconf"
      "bison"
      "bzip2"
      "gd"
      "gmp"
      "icu4c@78"
      "jpeg"
      "libsodium"
      "libxml2"
      "libzip"
      "oniguruma"
      "openssl@3"
      "pkgconf"
      "re2c"
      "sqlite"
      "zlib"
    ];
    casks = [
      "1password-cli"
      "appcleaner"
      "bruno"
      "chatgpt"
      "codex"
      "flux-app"
      "font-jetbrains-mono-nerd-font"
      "ghostty"
      "google-chrome"
      "karabiner-elements"
      "notunes"
      "obsidian"
      "orbstack"
      "raycast"
      "realvnc-connect-viewer"
      "slack"
      "tablepro"
      "tailscale-app"
      "visual-studio-code"

      # Paid
      "default-folder-x"
      "dockdoor-pro"
      "istat-menus"
      "launchos"
      "mission-control-plus"
      "popclip"

      # Subscription
      "1password"
      "cleanshot"
      "moom"
      "vpn-tracker-365"
    ];
    masApps = {
      "Amphetamine" = 937984704;
      "Developer" = 640199958;
      "Xcode" = 497799835;

      # Paid
      "Dato" = 1470584107;
    };
    onActivation = {
      autoUpdate = true;
      cleanup = "check";
      upgrade = true;
    };
  };
}
