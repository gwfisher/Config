# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "odin"; # Define your hostname.
  services.hardware.bolt.enable = true;

  networking.networkmanager.enable = true;

  # XServer
services.xserver.enable = true;

services.xserver.displayManager.lightdm.enable = true;
services.xserver.desktopManager.cinnamon.enable = true;

services.xserver = {
    layout = "us";
    xkbVariant = "";
};

  time.timeZone = "America/Chicago";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

 

  services.printing.enable = true;
  services.tailscale.enable = true;

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.wfisher = {
    isNormalUser = true;
    description = "Wes Fisher";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    	google-chrome
      spotify
	    vscode
      tailscale
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  	vim
	  git
	];

  system.stateVersion = "24.05"; # Did you read the comment?

}
