{
  description = "Makoto's Flake";

  inputs = {
    #select the unstable release
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
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
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #zen-browser
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nixvim, stylix, ... }: 
  {
    nixosConfigurations = {
      nixos-test = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos-test
          ./users/makoto.nix
          ./modules
          home-manager.nixosModules.home-manager{
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.makoto = {
              imports = [
                ./home
                nixvim.homeModules.nixvim
                stylix.homeModules.stylix
              ];
            };
            home-manager.extraSpecialArgs = inputs;
          }
        ];
      };
    };
  };
}
