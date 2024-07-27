{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
	home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

	outputs = { self, nixpkgs, home-manager, ... }: {

		nixosConfigurations.odin = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ 
				./hosts/odin/configuration.nix
				./hosts/odin/hardware-configuration.nix
				./hosts
				home-manager.nixosModules.home-manager
          		{
            		home-manager.useGlobalPkgs = true;
            		home-manager.useUserPackages = true;
					home.username = "wfisher";
					home.homeDirectory = "/home/wfisher";
				}
			];
		};
	};
}

