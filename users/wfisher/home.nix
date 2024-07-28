{ config, pkgs, ...}:
{
	imports = [ 
		./modules/ssh
		./dotfiles 
	];

    home.username = "wfisher";

	home.packages = [
		pkgs.spotify
		pkgs.discord
		pkgs.prismlauncher
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
		settings = {
				font_family = "Inconsolata";
				font_size = "12";
				tab_bar_edge = "top";
				tab_bar_style = "powerline";
				tab_powerline_style = "angled";
				allow_remote_control = "yes";
				shell_integration = "enabled";

		};
		extraConfig = "include ./nord.conf";
	};

    programs.vscode = {
        enable = true;
    };

	programs.chromium = {
		enable = true;
	};

    home.stateVersion = "24.05";

}