--------------------
---- WORKSPACES ----
--------------------

-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({ workspace = "1", persistent = true })
hl.workspace_rule({ workspace = "2", persistent = true })
hl.workspace_rule({ workspace = "3", persistent = true })
hl.workspace_rule({ workspace = "4", persistent = true })
hl.workspace_rule({ workspace = "5", persistent = true })

hl.workspace_rule({
    workspace   = "r[1-5]",
    gaps_out    = 5,
    gaps_in     = 2,
    persistent  = true,
})
