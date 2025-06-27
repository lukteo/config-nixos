_: {
  programs.nvf = {
    enable = true;
    defaultEditor = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        # keymaps
        keymaps = [
          {
            key = ";e";
            mode = "n";
            action = "<cmd>Oil<cr>";
            silent = true;
            desc = "Open oil explorer";
          }
          {
            key = "<leader>qq";
            mode = "n";
            action = "<cmd>qa<cr>";
            silent = true;
            desc = "Quit all";
          }
          {
            key = "<leader>qq";
            mode = "n";
            action = "<cmd>qa<cr>";
            silent = true;
            desc = "Quit all";
          }
          {
            key = "<leader>wd";
            mode = "n";
            action = "<C-w>c";
            silent = true;
            desc = "Delete Window";
          }
          {
            key = "<leader>-";
            mode = "n";
            action = "<C-w>s";
            silent = true;
            desc = "Split window below";
          }
          {
            key = "<leader>|";
            mode = "n";
            action = "<C-w>v";
            silent = true;
            desc = "Split window right";
          }
          {
            key = "<C-h>";
            mode = "n";
            action = "<C-w>h";
            silent = true;
            desc = "Go to left window";
          }
          {
            key = "<C-j>";
            mode = "n";
            action = "<C-w>j";
            silent = true;
            desc = "Go to lower window";
          }
          {
            key = "<C-k>";
            mode = "n";
            action = "<C-w>k";
            silent = true;
            desc = "Go to upper window";
          }
          {
            key = "<C-l>";
            mode = "n";
            action = "<C-w>l";
            silent = true;
            desc = "Go to right window";
          }
          {
            key = "<leader>cd";
            mode = "n";
            action = "<C-w>l";
            silent = true;
            desc = "Go to right window";
          }
          {
            key = "<C-s>";
            mode = "s";
            action = "<cmd>w<cr><esc>";
            silent = true;
            desc = "Save file";
          }
          {
            key = "<C-s>";
            mode = "x";
            action = "<cmd>w<cr><esc>";
            silent = true;
            desc = "Save file";
          }
          {
            key = "<C-s>";
            mode = "i";
            action = "<cmd>w<cr><esc>";
            silent = true;
            desc = "Save file";
          }
          {
            key = "<C-s>";
            mode = "n";
            action = "<cmd>w<cr><esc>";
            silent = true;
            desc = "Save file";
          }
          {
            key = "<esc>";
            mode = "n";
            action = "<cmd>noh<cr><esc>";
            silent = true;
            desc = "Escape and clear hlsearch";
          }
          {
            key = "<esc>";
            mode = "i";
            action = "<cmd>noh<cr><esc>";
            silent = true;
            desc = "Escape and clear hlsearch";
          }
          {
            key = "<;t>";
            mode = "t";
            action = "<c-\\><c-n>";
            silent = true;
            desc = "Enter normal mode in terminal";
          }
          {
            key = "jj";
            mode = "i";
            action = "<esc>";
            silent = true;
            desc = "Exit insert mode";
          }
        ];

        # vim system configuration
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
        };
        clipboard = {
          enable = true;
          providers = {
            wl-copy.enable = true;
          };
        };

        # language configuration
        lsp = {
          enable = true;
          formatOnSave = true;
        };
        diagnostics = {
          enable = true;
          config = {
            virtual_lines = true;
          };
        };

        languages = {
          enableDAP = true;
          enableExtraDiagnostics = true;
          enableFormat = true;
          enableTreesitter = true;

          bash = {
            enable = true;
            lsp.enable = true;
          };

          nix = {
            enable = true;
            lsp.enable = true;
          };

          ts = {
            enable = true;
            lsp.enable = true;
          };

          go = {
            enable = true;
            lsp.enable = true;
          };

          java = {
            enable = true;
            lsp.enable = true;
          };
        };

        # plugins configuration
        theme = {
          enable = true;
          name = "base16";
          base16-colors = {
            base00 = "000000";
            base01 = "181818"; # Lighter Background (Used for status bars, line number and folding marks)
            base02 = "282828"; # Selection Background
            base03 = "383838"; # Comments, Invisibles, Line Highlighting
            base04 = "585858"; # Dark Foreground (Used for status bars)
            base05 = "b8b8b8"; # Default Foreground, Caret, Delimiters, Operators
            base06 = "d8d8d8"; # Light Foreground (Not often used)
            base07 = "f8f8f8"; # Light Background (Not often used)
            base08 = "ab4642"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
            base09 = "dc9656"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
            base0A = "f7ca88"; # Classes, Markup Bold, Search Text Background
            base0B = "a1b56c"; # Strings, Inherited Class, Markup Code, Diff Inserted
            base0C = "86c1b9"; # Support, Regular Expressions, Escape Characters, Markup Quotes
            base0D = "7cafc2"; # Functions, Methods, Attribute IDs, Headings
            base0E = "ba8baf"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
            base0F = "a16946"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>          };
          };
        };
        telescope = {
          enable = true;
        };
        treesitter = {
          enable = true;
        };
        utility = {
          oil-nvim = {
            enable = true;
          };
        };
        terminal = {
          toggleterm = {
            enable = true;
            lazygit.enable = true;
          };
        };
      };
    };
  };
}
