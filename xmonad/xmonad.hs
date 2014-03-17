import XMonad

main = xmonad defaultConfig
    { modMask = mod4Mask -- use Super instead of Alt
    , borderWidth = 1
    , normalBorderColor = "black"
    , focusedBorderColor = "red"
    }
