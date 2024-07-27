{ config, pkgs, ...}:

{
    users.users.wfisher = {
    	isNormalUser = true;
    	description = "Wes Fisher";
    	extraGroups = [ "networkmanager" "wheel" "podman"];
    	packages = with pkgs; [
    		google-chrome
        	spotify
	    	vscode
        	tailscale
			discord
			obsidian
			kitty
    	];
  	};
}