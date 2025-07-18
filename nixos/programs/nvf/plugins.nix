_: {
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;
    };
    treesitter = {
      enable = true;
    };
    utility = {
      oil-nvim = {
        enable = true;
        setupOpts = {
          columns = ["icon"];

          view_options = {
            show_hidden = true;
            natural_order = true;
          };

          skip_confirm_for_simple_edits = true;
          prompt_save_on_select_new_entry = true;
          delete_to_trash = true;
          constrain_cursor = "editable";
          default_file_explorer = true;
          watch_for_changes = true;
          use_default_keymaps = true;
        };
      };
    };
    terminal = {
      toggleterm = {
        enable = true;
        lazygit.enable = true;
      };
    };
  };
}
