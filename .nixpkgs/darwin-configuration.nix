{ config, pkgs, ... }:

{
  environment = {
    shellAliases = {
      # .files
      dotfiles = "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME";
      # adb
      adbRestart = "adb shell stop && adb shell start";
      # git
      croot = "cd './$(git rev-parse --show-cdup 2>/dev/null)' 2>/dev/null";
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
    };

    systemPackages = [
      # core
      pkgs.git
      pkgs.micro
      pkgs.gnupg
      pkgs.gnused
      pkgs.htop
      pkgs.neofetch
      pkgs.p7zip
      pkgs.pass
      # media
      pkgs.ffmpeg
      pkgs.imagemagick
      pkgs.libheif
      # music
      pkgs.mpc_cli
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

  system = {
    defaults = {
      NSGlobalDomain = {
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
        minimize-to-application = true;
        mru-spaces = false;
        orientation = "left";
        show-process-indicators = true;
        show-recents = true;
      };

      finder = {
        AppleShowAllExtensions = true;
        FXEnableExtensionChangeWarning = false;
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
