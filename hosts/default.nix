{ pkgs, config, ...}:
{
    imports = [
        ../users
        ../modules/virtualization
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