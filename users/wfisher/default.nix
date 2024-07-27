{ config, pkgs, ...}:

{
    users.users.wfisher = {
    isNormalUser = true;
    description = "Wes Fisher";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    	google-chrome
        spotify
	    vscode
        tailscale
        kitty
		discord
    ];
  };

  programs.zsh = {
		enable = true;
		enableCompletion = true;
		oh-my-zsh = {
			enable = true;
			theme = "agnoster";
			plugins = [ "git" ];
		};
		shellAliases = {
			update = "sudo nixos-rebuild switch";
		};
	};
}