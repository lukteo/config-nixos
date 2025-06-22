{
  description = "Luke's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nvf, used for configuring nvim on nixos
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nvf,
    ...
  }: {
    nixosConfigurations = {
      thinkpad = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          # package defaults declaration
          nvf.nixosModules.default

          # system configuration
          ./nixos/configuration.nix

          # home manager configuration
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users = {
                luketeo = import ./home/home.nix;
              };
            };
          }
        ];
      };
    };
  };
}
