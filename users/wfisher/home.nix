{ config, pkgs, ...}:
{
	imports = [ ./modules/ssh ];

    home.username = "wfisher";

	home.packages = [
		pkgs.spotify
		pkgs.discord
	];

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

	programs.gpg.enable = true;
	services.gpg-agent = {
  		enable = true;
  		enableSshSupport = true;
		pinentryPackage = pkgs.pinentry-curses;
	};

	programs.git = {
		enable = true;
		userName = "wfisher";
		userEmail = "wfisher@praetor.tel";
	};

    programs.kitty = {
        enable = true;
    };

    programs.vscode = {
        enable = true;
    };

	programs.chromium = {
		enable = true;
	};

    home.stateVersion = "24.05";

}