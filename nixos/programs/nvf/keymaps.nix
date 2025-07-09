_: {
  programs.nvf.settings.vim = {
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
  };
}
