{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

	nixosConfigurations.odin = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		modules = [ 
			./hosts/odin/configuration.nix
			./hosts/odin/hardware-configuration.nix 
		];
	};
  };
}
