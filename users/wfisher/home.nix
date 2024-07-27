{ config, pkgs, ...}:
{
    home.username = "wfisher";
    home.homeDirectory = "/home/wfisher";

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