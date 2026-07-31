--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.config({
    dwindle = {
        preserve_split = true,
        smart_split     = false, -- make sure smart_split is off, it overrides manual splits
    },

    general = {
        col = {
            active_border   = "rgba(83A598FF)",
            inactive_border = "rgba(32302FFF)",
        },
    },

    animations = {
        enabled = true,
    },
})

-- animation SPEED is in deciseconds (1 = 100ms) — smaller = faster
hl.animation({ leaf = "windows",    enabled = true, speed = 1, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "fade",       enabled = true, speed = 1, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, bezier = "default" })

-- Example windowrules that are useful

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    border_size = 3,
    rounding    = 3,

    suppress_event = "maximize",
})

hl.window_rule({
    name  = "lxqt-policykit-float",
    match = { class = "lxqt-policykit-agent" },

    float  = true,
    center = true,
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})
