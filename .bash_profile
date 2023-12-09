#
# ~/.bash_profile
#
# The bash_profile is executed for login shells. 
# This is the first file to be executed when you log in to your system.


[[ -f ~/.bashrc ]] && . ~/.bashrc


# Wayland related configuration
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
    export SDL_VIDEODRIVER=wayland
    export WLR_RENDERER=vulkan
    export QT_QPA_PLATFORM=wayland
fi

# Make Qt apps look native on GNOME
if [ "$XDG_CURRENT_DESKTOP" = "GNOME" ]; then
    export QT_QPA_PLATFORMTHEME='gnome'
fi

