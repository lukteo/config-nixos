_: {
  programs.nvf.settings.vim = {
    options = {
      number = true;
      relativenumber = true;
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      wrap = false;
      ignorecase = true;
      smartcase = true;
      undofile = true;
      splitright = true;
      splitbelow = true;
      scrolloff = 10;
      cursorline = true;
      cursorlineopt = "both";
      mouse = "a"; # Enable mouse support
      termguicolors = true; # True color support for better themes
      signcolumn = "yes"; # Always show the sign column
      updatetime = 300; # Faster completion and diagnostics
      timeoutlen = 500; # Faster key sequence timeout
      showmode = false; # Hide mode since statuslines usually show it
      completeopt = "menuone,noinsert,noselect"; # Better completion menu behavior
      list = true;
      listchars = "tab:▸ ,trail:·,nbsp:␣";
      foldmethod = "indent";
      foldlevel = 99;
    };
    clipboard = {
      enable = true;
      providers = {
        wl-copy.enable = true;
      };
      registers = "unnamedplus";
    };
  };
}
