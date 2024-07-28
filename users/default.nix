{ config, pkgs, ...}:

{
    users.users.wfisher = {
    	isNormalUser = true;
    	description = "Wes Fisher";
    	extraGroups = [ "networkmanager" "wheel" "podman"];
		shell = pkgs.zsh;
  	};
}