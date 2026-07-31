-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function ()
    hl.exec_cmd("quickshell & awww-daemon & blueman-applet")
    hl.exec_cmd("lxqt-policykit-agent")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("wl-paste --watch clipvault store")
    hl.exec_cmd("kded6")
    hl.exec_cmd("kbuildsycoca6")
end)
