## Configs I use on my daily Linux gaming laptop
(accidentally may include some default configs)

## Some Specs
**OS**: [CachyOS](https://github.com/CachyOS) x86_64-v3 (Arch-based, completely recompiled/optimized for [x86_64-v3](https://www.phoronix.com/news/GCC-11-x86-64-Feature-Levels) architecture)

**DE**: KDE Plasma 6 Wayland
- Themes, Colors: [Sweet](https://store.kde.org/p/1294174){-Dark,-transparent}
- Cursor theme: Breeze (black)
    
**HW**: Asus ROG Strix G513 Advantage Edition (AMD GPU)

**DM**: LightDM + Slick Greeter

**Storage partition scheme**:
```
nvme0n1 (Total: 953.9G) — Samsung 970 PRO
├── nvme0n1p1 (vfat, 6G) - /boot (Boot)
├── nvme0n1p2 (vfat, 20.2G) - /mnt/repchroot (ISO BOOT)
├── nvme0n1p3 (LVM2_member)
│   ├── main-system (f2fs, 128G) - / (System)
│   ├── main-data (crypto_LUKS, 321G)
│   │   └── linn (btrfs, 321G) - /home (Data)
│   └── main-cache (ext4, 200G) - /cache (Cache)
│				- /home/starterx4/.cache (Cache)
├── nvme0n1p4 (unassigned, 130.7G) - ? (Free space reservation)
├── nvme0n1p5 (vfat, 200M) - ? (MYASUS)
└── nvme0n1p6 (ntfs, 22G) - ? (RESTORE)  

nvme1n1 (Total: 3.6T) — Samsung 990 PRO
├── nvme1n1p2 (f2fs, 2.6T) - /gry (Games)
├── nvme1n1p3 (xfs, 910.5G) - /kesz (Others)
├── nvme1n1p4 (f2fs, 16G) - /kesz_spadfs (Spotify_Cache)
└── nvme1n1p1 (unassigned, 162.7G) - ? (Free space reservation (4.4%))
```