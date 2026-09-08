------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = "1.0",
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "2560x1440@144",
    position = "-320x-1440",
    scale    = "1",
})
hl.monitor({
   output    = "DP-1",
   mode      = "1920x1080@60",
   position  = "0x-1080",
   scale     = "1",
})
