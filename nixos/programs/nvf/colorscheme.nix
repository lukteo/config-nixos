_: {
  programs.nvf.settings.vim = {
    theme = {
      enable = true;
      name = "base16";
      base16-colors = {
        base00 = "000000"; # Background (pure black)
        base01 = "181818"; # Lighter background (status bars, line numbers)
        base02 = "232323"; # Selection background
        base03 = "444444"; # Comments, invisibles, line highlighting
        base04 = "b0b0b0"; # Dark foreground (status bars)
        base05 = "e0e0e0"; # Default foreground, caret, delimiters, operators
        base06 = "f5f5f5"; # Light foreground (not often used)
        base07 = "ffffff"; # Light background (not often used)
        base08 = "e06c75"; # Red: variables, deleted diffs
        base09 = "d19a66"; # Orange: numbers, constants
        base0A = "e5c07b"; # Yellow: classes, bold, search highlight
        base0B = "98c379"; # Green: strings, inserted diffs
        base0C = "56b6c2"; # Cyan: support, regex
        base0D = "61afef"; # Blue: functions, methods
        base0E = "c678dd"; # Magenta: keywords, storage
        base0F = "be5046"; # Brown: deprecated, embedded tags
      };
    };
  };
}
