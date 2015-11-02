import XMonad

-- Use `mod + w, mod + e, and mod + r to switch beteen physical screens.
-- Use `mod + t to push window back into tiling

main = xmonad defaultConfig
    { modMask = mod4Mask -- use Super instead of Alt
    , borderWidth = 1
    , normalBorderColor = "black"
    , focusedBorderColor = "red"
    , focusFollowsMouse = False
    }
