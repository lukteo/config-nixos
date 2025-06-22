{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;

    font = {
      package = pkgs.terminus_font;
      name = "Terminus";
      size = 10;
    };

    settings = {
      scrollback_line = 2500;
      scroll_on_output = true;
      scroll_on_keystroke = true;
      enable_audio_bell = false;
    };

    shellIntegration.enableZshIntegration = true;
  };
}
