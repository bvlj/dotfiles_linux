{
  packageOverrides = pkgs: with pkgs; {
    myCorePkgs = pkgs.buildEnv {
      name = "my-core-pkgs";
      paths = [
        git
        micro
        gnupg
        gnused
        htop
        neofetch
        p7zip
        pass
      ];
      pathsToLink = [
       "/bin"
       "/share"
      ];
    };

    myExtraDevPkgs = pkgs.buildEnv {
      name = "my-extra-dev-pkgs";
      paths = [
        bazel_4
        bazel-buildtools
        clang-tools
      ];
      pathsToLink = [
       "/bin"
       "/share"
      ];
    };

    myLaTeX = pkgs.buildEnv {
      name = "my-LaTeX";
      paths = [
        # LaTeX
        (texlive.combine {
          inherit (texlive)
          scheme-full
          ;
        })
      ];
      pathsToLink = [
       "/bin"
       "/share"
      ];
    };

    myMediaPkgs = pkgs.buildEnv {
      name = "my-media-pkgs";
      paths = [
        ffmpeg
        imagemagick
        libheif
        mpc_cli
        mpd
        ncmpcpp
        youtube-dl
      ];
      pathsToLink = [
       "/bin"
       "/share"
      ];
    };
  };
}
