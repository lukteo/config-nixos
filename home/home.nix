{pkgs, ...}: {
  imports = [
    ./programs/git.nix
    ./programs/kitty.nix
    ./programs/zsh.nix
    ./programs/lazygit.nix
  ];
  home = {
    username = "luketeo";
    homeDirectory = "/home/luketeo";
    shell = {
      enableZshIntegration = true;
    };
    packages = with pkgs; [
      ripgrep # recursively searches directories for a regex pattern
      jq # A lightweight and flexible command-line JSON processor
      yq-go # yaml processor https://github.com/mikefarah/yq
      eza # A modern replacement for ‘ls’
      fzf # A command-line fuzzy finder

      # misc
      which
      tree
      gnused
      gnutar
      gnumake
      gawk
      zstd
      gnupg

      # nix related
      #
      # it provides the command `nom` works just like `nix`
      # with more details log output
      nix-output-monitor

      # productivity
      glow # markdown previewer in terminal

      btop # replacement of htop/nmon
      iotop # io monitoring
      iftop # network monitoring

      # system call monitoring
      strace # system call monitoring
      ltrace # library call monitoring
      lsof # list open files

      # system tools
      sysstat
      lm_sensors # for `sensors` command
      ethtool
      pciutils # lspci
      usbutils # lsusb

      # development related
      go
      biome
    ];
  };

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
