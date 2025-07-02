# My nix flake system configuration for both NixOS and macOS

## Overview

### Description

I'm currently learning nix, and this is my configuration targeted to use on a nixos vm and my mac. The configuration uses nix flake, nix-darwin and home-manager.

### Constructure

`Modules` for platform specific system module configuration

`hosts` for host specific system configuration

`home` for home-manager configuration, if there is a `darwin.nix`, then nix-darwin uses this config, otherwise darwin just use the `default.nix`, nixOS just use the `default.nix`

`users` for delcaring users, now there is only one user `makoto`, who is my main user, but for darwin and linux, there is small differences

## Deployment
### NixOS
#### 1. A NixOS install
#### 2. Clone this repo to the home directory
```shell
git clone https://github.com/Ye-on-fire/nixos-configs.git
```
You can rename the `nixos-configs` to whatever you like. For example, `.dotfiles`
#### 3. link this directory to /etc/nixos
```shell
sudo ln -s ~/nixos-configs /etc/nixos
```
#### 4. generate hardware-configuration.nix and copy the grub configs as you want, and set your hostname.
```shell
nixos-generate-config > hardware-configurations.nix
```
**This is just an example, you need to do it yourself**

#### 5. Rebuild the system
```shell
#set temp var to enable flakes
export NIX_CONFIG='experimental-features = flake nix-command'
sudo nixos-rebuild switch --flake /etc/nixos#hostname
```
### MacOS
#### 1. install nix and homebrew
```shell
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --determinate
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### 2. clone the repo
```shell
git clone https://github.com/Ye-on-fire/nixos-configs.git
```
You can rename the `nixos-configs` to whatever you like. For example, `.dotfiles`
#### 3. link this directory to /etc/nix-darwin
```shell
sudo ln -s ~/nixos-configs /etc/nix-darwin
```
#### 4. Change the hostname in the config to your hostname.
Get the host name by `scutil --get LocalHostName`

Change the arch if you use apple silicon
#### 5. Rebuild the system first with the nix-darwin flake
```shell
sudo nix run nix-darwin/master#darwin-rebuild -- switch
```

## Details
### 1. neovim
for NixOS use nixvim
for others use home.file

### 2. style management
for NixOS use stylix
for others use individual settings