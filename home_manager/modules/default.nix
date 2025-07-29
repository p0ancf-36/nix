{
  imports = [
    
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
  };

  programs.git = {
    enable = true;
    userName = "Eugene Bakhmatov";
    userEmail = "bakhmatov.eugene@yandex.ru";
  };

  programs.alacritty = {
    enable = true;
  };

  programs.firefox = {
    enable = true;
  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",auto,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      # "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";

      # exec-once = [
      #   "waybar"
      #   "wl-paste --type text --watch cliphist store"
      #   "wl-paste --type image --watch cliphist store"
      # ];

      general = {
        gaps_in = 0;
        gaps_out = 0;

        border_size = 5;

        "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 0;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = false;
      };
    };
    bind = [
      "$mainMod SHIFT, Return, exec, $terminal"
      "$mainMod SHIFT, Q, killactive,"
      "$mainMod SHIFT, M, exit,"
      # "$mainMod,       R, exec, $fileManager"
      # "$mainMod,       F, togglefloating,"
      # "$mainMod,       D, exec, $menu --show drun"
      # "$mainMod,       P, pin,"
      # "$mainMod,       J, togglesplit,"
      # "$mainMod,       E, exec, bemoji -cn"
      # "$mainMod,       V, exec, cliphist list | $menu --dmenu | cliphist decode | wl-copy"
      # "$mainMod,       B, exec, pkill -SIGUSR2 waybar"
      # "$mainMod SHIFT, B, exec, pkill -SIGUSR1 waybar"
      # "$mainMod,       L, exec, loginctl lock-session"
      # "$mainMod,       P, exec, hyprpicker -an"
      # "$mainMod,       N, exec, swaync-client -t"
      # ", Print, exec, grimblast --notify --freeze copysave area"
      # "$mainMod,       W, exec, ${booksScript}/bin/open_books"

      # Moving focus
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      # Moving windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"

      # Resizeing windows                   X  Y
      "$mainMod CTRL, left,  resizeactive, -60 0"
      "$mainMod CTRL, right, resizeactive,  60 0"
      "$mainMod CTRL, up,    resizeactive,  0 -60"
      "$mainMod CTRL, down,  resizeactive,  0  60"

      # Switching workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Moving windows to workspaces
      "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
      "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
      "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
      "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
      "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
      "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
      "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
      "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
      "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
      "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

      # Scratchpad
      "$mainMod,       S, togglespecialworkspace,  magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"
    ];
  };

  programs.nixvim = {
    enable = true;
  };
}