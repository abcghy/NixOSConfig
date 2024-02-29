{ config, pkgs, ... }:

{
  home.username = "sakura";
  home.homeDirectory = "/home/sakura";

  home.packages = with pkgs; [
    # Archives
    zip
    unzip

    # network tools
    iperf3

    # misc
    tree

    btop
  ];

  programs.git = {
    enable = true;
    userName = "Harry Gao";
    userEmail = "beatbox_gao@hotmail.com";
  };

  programs.zsh = {
    enable = true;
    shellAliases = {
      lg = "lazygit";
      vim = "nvim";
    };
  };

  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    # custom settings
    settings = {
      add_newline = true;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = false;
    };
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
