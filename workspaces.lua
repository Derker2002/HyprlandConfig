--------------------
---- WORKSPACES ----
--------------------

-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({monitor = "eDP-1", workspace = 1, name = p_main, persistent = true})
hl.workspace_rule({monitor = "eDP-1", workspace = 2, name = p_web, persistent = true})
hl.workspace_rule({monitor = "eDP-1", workspace = 3, name = p_code, persistent = true})
hl.workspace_rule({monitor = "eDP-1", workspace = 4, name = p_music, persistent = true})
hl.workspace_rule({monitor = "eDP-1", workspace = 5, name = p_chat, persistent = true})
hl.workspace_rule({
    workspace   = "r[1-10]",
    gaps_out    = 5,
    gaps_in     = 2
})

hl.workspace_rule({
    workspace  = "s[true]",
    gaps_in   = 8,
    gaps_out  = 8 
})
