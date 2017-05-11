# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" "sr_mod" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "vault/sys/atom/ROOT/17.03";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "vault/sys/atom/ROOT/17.03/nix";
      fsType = "zfs";
    };

  fileSystems."/nix/store" =
    { device = "vault/sys/atom/ROOT/17.03/nix/store";
      fsType = "zfs";
    };

  fileSystems."/var" =
    { device = "vault/sys/atom/ROOT/17.03/var";
      fsType = "zfs";
    };

  fileSystems."/var/lib" =
    { device = "vault/sys/atom/ROOT/17.03/var/lib";
      fsType = "zfs";
    };

  fileSystems."/var/log" =
    { device = "vault/sys/atom/var/log";
      fsType = "zfs";
    };

  fileSystems."/nix/.ro-store" =
    { device = "vault/sys/atom/ROOT/17.03/nix/ro-store";
      fsType = "zfs";
    };

  fileSystems."/var/log/journal" =
    { device = "vault/sys/atom/var/log/journal";
      fsType = "zfs";
    };

  fileSystems."/var/cache" =
    { device = "vault/sys/atom/var/cache";
      fsType = "zfs";
    };

  fileSystems."/var/lib/systemd" =
    { device = "vault/sys/atom/ROOT/17.03/var/lib/systemd";
      fsType = "zfs";
    };

  fileSystems."/nix/var" =
    { device = "vault/sys/atom/ROOT/17.03/nix/var";
      fsType = "zfs";
    };

  fileSystems."/var/lib/nixos" =
    { device = "vault/sys/atom/ROOT/17.03/var/lib/nixos";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "vault/sys/atom/home";
      fsType = "zfs";
    };

  fileSystems."/var/lib/containers" =
    { device = "vault/sys/atom/ROOT/17.03/var/lib/containers";
      fsType = "zfs";
    };

  fileSystems."/var/lib/lxc" =
    { device = "vault/sys/atom/var/lib/lxc";
      fsType = "zfs";
    };

  fileSystems."/nix/.rw-store" =
    { device = "vault/sys/atom/ROOT/17.03/nix/rw-store";
      fsType = "zfs";
    };

  fileSystems."/home/john" =
    { device = "vault/sys/atom/home/john";
      fsType = "zfs";
    };

  fileSystems."/var/lib/systemd/coredump" =
    { device = "vault/sys/atom/ROOT/17.03/var/lib/systemd/coredump";
      fsType = "zfs";
    };

  fileSystems."/nix/var/log" =
    { device = "vault/sys/atom/ROOT/17.03/nix/var/log";
      fsType = "zfs";
    };

  fileSystems."/nix/var/nix" =
    { device = "vault/sys/atom/ROOT/17.03/nix/var/nix";
      fsType = "zfs";
    };

  fileSystems."/home/john/.cache" =
    { device = "vault/sys/atom/home/john/cache";
      fsType = "zfs";
    };

  fileSystems."/home/john/.local" =
    { device = "vault/sys/atom/home/john/local";
      fsType = "zfs";
    };

  fileSystems."/home/john/.local/share/Steam" =
    { device = "vault/sys/atom/home/john/local/share/Steam";
      fsType = "zfs";
    };

  fileSystems."/home/john/.config" =
    { device = "vault/sys/atom/home/john/config";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/F2F4-47DC";
      fsType = "vfat";
    };

  fileSystems."/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/home/john/.cache/google-chrome" =
    { device = "tmpfs";
      fsType = "tmpfs";
      options = [ "uid=1000" "gid=100"];
    };

  fileSystems."/home/john/University" =
    { device = "vault/data/University";
      fsType = "zfs";
    };

  fileSystems."/home/john/Books" =
    { device = "vault/data/Books";
      fsType = "zfs";
    };

  fileSystems."/home/john/Computer" =
    { device = "vault/data/Computer";
      fsType = "zfs";
    };

  fileSystems."/home/john/Personal" =
    { device = "vault/data/Personal";
      fsType = "zfs";
    };

  fileSystems."/home/john/Pictures" =
    { device = "vault/data/Pictures";
      fsType = "zfs";
    };

  fileSystems."/home/john/Reference" =
    { device = "vault/data/Reference";
      fsType = "zfs";
    };

  fileSystems."/home/john/Workspace" =
    { device = "vault/data/Workspace";
      fsType = "zfs";
    };

  fileSystems."/mnt/lilan/Data" =
    { device = "lilan.ramsden.network:/mnt/tank/data/Atreides";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Downloading/Torrents" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Torrents";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Downloading/Downloads/Complete" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Downloads/Complete";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Downloading/Downloads/Incomplete" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Downloads/Incomplete";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Series" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Series";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Anime" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Anime";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Documentary" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Documentary";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Lectures" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Lectures";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Animated" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Animated";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Podcasts/Video" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Podcasts/Video";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Series/Podcasts/Audio" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Series/Podcasts/Audio";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Movies" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Movies";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  fileSystems."/mnt/lilan/media/Music" =
    { device = "lilan.ramsden.network:/mnt/tank/media/Music";
      fsType = "nfs";
      options = [ "noauto" "x-systemd.automount" "x-systemd.device-timeout=175" "timeo=15" "x-systemd.idle-timeout=1min" "user" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/de6bf709-e584-453f-a385-861af726c5bd"; }
    ];

  nix.maxJobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = "powersave";
}
