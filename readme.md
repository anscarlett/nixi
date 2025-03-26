# Nixos installation tool

This repo will assist in installing nixos

The procedure a user will follow is:

1. Boot from a live NixOS ISO
2. Configure networking if necessary e.g. WiFi
3. Download this repo from GitHub/GitLab/GitEtc...
4. Make some decisions about the installation
    - Choose disk. The disk to be installed on will need to defined. This could be an NVMe or USB
    - Choose partitioning scheme. We will use Disko for this. Predefined schemes will be available
        - This will be determined by responses to the following questions:
            - Do you want to keep an existing Windows installation?
            - Do you want to use LVM?
            - Do you want to use BTRFS?
            - Do you want to use encryption?
            - Do you want to use impermanence?
    - Create users
        - You can just select one of the predefined users, or create a new one by duplicating and customising an existing user
    - Choose the hostname
        - If a system has been configured before, the system will be available in the hosts directory, or one of its subdirectories. If not, one may be duplicated and customised. We can use the nixos-hardware repository for this, or we can create our own
5. Install NixOS
    - We will use Disko to prepare the disk
    - We will need to provision the YubiKey
    - We will need to install NixOS
6. Reboot


## Repository contents

homes
hosts
modules
flake.nix