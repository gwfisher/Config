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
        direnv
        tmux
	];

    programs.zsh.enable = true;
}