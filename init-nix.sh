#!/bin/sh

install -d -m 0755 /nix/var /nix/var/log /nix/var/log/nix /nix/var/log/nix/drvs /nix/var/nix{,/db,/gcroots,/profiles,/temproots,/userpool,/daemon-socket} /nix/var/nix/{gcroots,profiles}/per-user
chgrp nixbld /nix/store
chmod 1775 /nix/store
echo "https://nixos.org/channels/nixpkgs-unstable nixpkgs" > /root/.nix-channels
/nix/store/*nix*/bin/nix-store --load-db < /.reginfo
/nix/store/*nix*/bin/nix-env -i /nix/store/*nix*