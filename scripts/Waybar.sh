#!/bin/bash


# Install dependencies
echo "Installing dependencies..."
yes | sudo pacman -S --needed --noconfirm \
    base-devel \
    cmake \
    meson \
    ninja \
    pkgconf \
    gtk3 \
    jsoncpp \
    spdlog \
    wayland \
    xcb-util \
    xcb-util-image \
    xcb-util-wm \
    xcb-util-xrm \
    xcb-util-cursor \
    pango \
    cairo \
    gdk-pixbuf2 \
    glib2 \
    jq

# Install waybar from AUR using an AUR helper like yay or paru
# Check if yay is installed, if not install it
if ! is_installed yay; then
    echo "yay is not installed. Installing yay..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Install Waybar using yay
echo "Installing Waybar..."
yes | yay -S --noconfirm waybar

# Finish
echo "Installation completed successfully!"

# Display information
echo "You can now run Waybar."

