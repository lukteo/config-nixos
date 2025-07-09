{pkgs, ...}: {
  programs.nvf.settings.vim = {
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
        format = {
          package = pkgs.biome;
          type = "biome";
        };
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
  };
}
