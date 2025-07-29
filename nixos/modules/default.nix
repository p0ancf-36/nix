{ pkgs, user, ... }: {
  imports = [
    
  ];

  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = true;
    };
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
    };
  };

  boot.kernelPackages = pkgs.linuxPackages_zen;
  networking.networkmanager.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  time.timeZone = "Asia/Yekaterinburg";

  users = {
    defaultUserShell = pkgs.zsh;

    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };

  services.getty.autologinUser = user;

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    # xwayland.enable = false;
  };

  security.pam.services.hyprlock = {};
}