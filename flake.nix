{
  description = "Makoto's Flake";

  inputs = {
    #select the unstable release
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    #include nix-darwin for macos management
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #include home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #include the nixvim flake
    #accesss it with inputs.nixvim.nixosModules.nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #stylix
    # stylix = {
    #   url = "github:danth/stylix";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #zen-browser
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, home-manager, nixvim
    , zen-browser, ... }: {
      nixosConfigurations = {
        nixos-test = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/nixos-test
            ./users/makoto.nix
            ./modules/nixos
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.backupFileExtension = "backup";
              home-manager.users.makoto = {
                imports = [
                  ./home
                  nixvim.homeModules.nixvim
                  zen-browser.homeModules.beta
                ];
              };
              home-manager.extraSpecialArgs = inputs;
            }
          ];
        };
        shen-nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/shen-nixos
            ./users/makoto.nix
            ./modules/nixos
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.backupFileExtension = "backup";
              home-manager.users.makoto = {
                imports = [
                  ./home
                  nixvim.homeModules.nixvim
                  zen-browser.homeModules.beta
                ];
              };
              home-manager.extraSpecialArgs = inputs;
            }
          ];
        };
      };

      darwinConfigurations = {
        "makotos-iMac-Pro" = nix-darwin.lib.darwinSystem {
          system = "x86_64-darwin";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/makotos-iMac-Pro
            ./users/makoto-darwin.nix
            ./modules/darwin
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.backupFileExtension = "backup";
              home-manager.users.makoto = { imports = [ ./home/darwin.nix ]; };
              home-manager.extraSpecialArgs = inputs;
            }
          ];
        };
      };
    };
}
