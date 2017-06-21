# input-configs

My personal repository to store my dotfiles for user input

### Synaptics

Global config files for synaptics (if you want to define your own) should be stored in `/etc/X11/xorg.conf.d/70-synaptics.conf`. Here is the default config for the synaptics module:

```
Section "InputClass"
    Identifier "touchpad"
    Driver "synaptics"
    MatchIsTouchpad "on"
        Option "TapButton1" "1"
        Option "TapButton2" "3"
        Option "TapButton3" "2"
        Option "VertEdgeScroll" "on"
        Option "VertTwoFingerScroll" "on"
        Option "HorizEdgeScroll" "on"
        Option "HorizTwoFingerScroll" "on"
        Option "CircularScrolling" "on"
        Option "CircScrollTrigger" "2"
        Option "EmulateTwoFingerMinZ" "40"
        Option "EmulateTwoFingerMinW" "8"
        Option "CoastingSpeed" "0"
        Option "FingerLow" "30"
        Option "FingerHigh" "50"
        Option "MaxTapTime" "125"
        ...
EndSection
```
- `TapButton1` = non-corner, one finger tap
- `TapButton2` = non-corner, two finger tap
- `TapButton3` = non-corner, three finger tap
- `VertEdgeScroll` = Vertical scrolling through the right edge of pad
- `HorizEdgeScroll` = Horizontal scrolling through bottom edge of pad
- `VertTwoFingerScroll` = Configurable two finger scrolling
- `HorizTwoFingerScroll` = Configurable two finger scroll, but horizontal
- `EmulateTwoFingerZ/W` = Integer to determine precision of two finger scrolls
- `MaxTapTime = Play with this value to reduce false positives when hand is over pad, high integers means that a harder, more "crisp" tap is required to actuate it.
- `FingerLow` = Integer value that determines how low the finger pressure goes before a release is registered
- `FingerHigh` = Integer value that determines how high the finger pressure needs to be to register


### References

[arch-wiki]: https://wiki.archlinux.org/index.php/Touchpad_Synaptics "Arch Wiki: Touchpad Synaptics"
