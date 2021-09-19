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
          scheme-basic
          xifthen
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
