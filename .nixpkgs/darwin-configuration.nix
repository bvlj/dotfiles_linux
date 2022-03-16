{ config, pkgs, ... }:

{
  environment = {
    shellAliases = {
      # .files
      dotfiles = "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME";
      # adb
      adbRestart = "adb shell stop && adb shell start";
      # git
      croot = "cd './\\$(git rev-parse --show-cdup 2>/dev/null)' 2> /dev/null";
      gitpick = "git cherry-pick";
      gitlg = "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative";
      # nix
      nix-chan = "nix-channel";
      nix-gc = "nix-collect-garbage -d";
      # tar
      tarc = "tar -cvzf";
      tarx = "tar -xvzf";
      # yt-dl
      yt-dl-mp3 = "youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'";
      # open
      open-last = "open \\$(find -s . -type f -maxdepth 1 | tail -n 1)";
      # cd
      "..." = "cd ../..";
      "...." = "cd ../../..";
      # grep
      "grep" = "grep --color=auto";
      # ls
      "ls" = "ls -1";
    };

    systemPackages = [
      # core
      pkgs.git
      pkgs.micro
      pkgs.gnupg
      pkgs.gnused
      pkgs.htop
      pkgs.p7zip
      pkgs.pass
      # media
      pkgs.ffmpeg
      pkgs.imagemagick
      pkgs.libheif
      pkgs.mpv-with-scripts
      # music
      pkgs.mpd
      pkgs.ncmpcpp
      pkgs.youtube-dl
    ];

    systemPath = [
      "$HOME/Library/Android/sdk/platform-tools/"
    ];

    variables = {
      ANDROID_HOME = "$HOME/Library/Android/sdk";
      EDITOR = "micro";
      JAVA_HOME = "/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home";
    };
  };

  nix = {
    package = pkgs.nix;
    readOnlyStore = true;
  };

  programs = {
    zsh = {
      enable = true;
      enableBashCompletion = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      promptInit = "";
    };
  };

  services = {
    nix-daemon = {
      enable = true;
    };
  };

  system = {
    defaults = {
      NSGlobalDomain = {
        AppleEnableSwipeNavigateWithScrolls = true;
        AppleInterfaceStyleSwitchesAutomatically = true;
        AppleMeasurementUnits = "Centimeters";
        AppleMetricUnits = 1;
        AppleShowAllExtensions = true;
        AppleShowScrollBars = "WhenScrolling";
        AppleTemperatureUnit = "Celsius";
        InitialKeyRepeat = 35;
        KeyRepeat = 2;
        NSDocumentSaveNewDocumentsToCloud = false;
        NSNavPanelExpandedStateForSaveMode = true;
        NSNavPanelExpandedStateForSaveMode2 = true;
      };

      SoftwareUpdate = {
        AutomaticallyInstallMacOSUpdates = false;
      };

      dock = {
        autohide = true;
        autohide-delay = "1000.0";
        minimize-to-application = true;
        mru-spaces = false;
        orientation = "bottom";
        show-process-indicators = true;
        show-recents = true;
        static-only = false;
      };

      finder = {
        AppleShowAllExtensions = true;
        FXEnableExtensionChangeWarning = false;
        FXDefaultSearchScope = "SCcf";
        FXPreferredViewStyle = "Nlsv";
        _FXShowPosixPathInTitle = true;
      };

      loginwindow = {
        GuestEnabled = false;
        SHOWFULLNAME = true;
      };

      trackpad = {
        Clicking = true;
        TrackpadThreeFingerDrag = true;
      };
    };

    stateVersion = 4;
  };
}
