_: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
      gs = "git status";
      update = "sudo nixos-rebuild switch --flake ~/config-nixos#thinkpad";
    };

    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "z"
        "colored-man-pages"
        "history"
      ];
      theme = "af-magic";
    };
  };
}
