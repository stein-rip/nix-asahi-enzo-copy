{ hyprland, pkgs, ...}: {

  imports = [
    hyprland.homeManagerModules.default
    #./environment
    ./programs
    ./scripts
    ./themes
  ];

  home = {
    username = "ssstein";
    homeDirectory = "/home/ssstein";
  };

  home.packages = (with pkgs; [
    
    #User Apps
    celluloid
    librewolf
    cool-retro-term
    bibata-cursors
    vscode
    lollypop
    lutris
    openrgb
    betterdiscord-installer
    

    #utils
    ranger
    wlr-randr
    git
    rustup
    gnumake
    catimg
    curl
    appimage-run
    xflux
    dunst
    pavucontrol
    sqlite

    #misc 
    cava
    neovim
    nano
    rofi
    nitch
    wget
    grim
    slurp
    wl-clipboard
    pamixer
    mpc-cli
    tty-clock
    eza
    btop
    tokyo-night-gtk

  ]) ++ (with pkgs; [ 
    nautilus
    zenity
    gnome-tweaks
    eog
    gedit
  ]);

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Tokyonight-Dark-B-LB";
    };
  };

  programs.home-manager.enable = true;

  home.stateVersion = "23.05";
}
