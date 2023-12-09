# my-linux-configs
Store configs for my linux installations

## How to install nvidia

1. sudo pacman -S nvidia nvidia-utils
2. sudo nano /etc/mkinitcpio.conf
    - MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)
    - HOOKS=(kms base udev autodetect modconf keyboard keymap consolefont block filesystems fsck)
3. sudo mkinitcpio -P
4. sudo nano /etc/default/grub
    - GRUB_CMDLINE_LINUX_DEFAULT="nvidia_drm.modeset=1 nvidia_drm.fbdev=1 loglevel=3 quiet"
5. sudo grub-mkconfig -o /boot/grub/grub.cfg


## How to configure nvidia wayland on GNOME

sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules
yay -S mutter-vrr gnome-control-center-vrr

https://wiki.archlinux.org/title/GDM#Wayland_and_the_proprietary_NVIDIA_driver

https://wiki.archlinux.org/title/Variable_refresh_rate


