{ pkgs, config, ...}:
{
    imports = [
        ../modules/virtualization
        ../users
    ];

     environment.systemPackages = with pkgs; [
  	    vim
	    git
        wget
        zsh
        direnv
        tmux
	];
}