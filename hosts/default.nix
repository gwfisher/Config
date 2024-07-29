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
        sshfs
        gnome-tweaks
        bash
        killall
        unzip
        zstd
        kitty
	];

    programs.zsh.enable = true;
}