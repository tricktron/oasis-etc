umask 022

export ENV=/etc/kshrc
export PATH=/bin:/nix/var/nix/profiles/default/bin:$HOME/.nix-profile/bin
export MANPATH=/share/man
export PERP_BASE=/etc/perp
export PAGER=cat
export EDITOR=ed
export PS1='\$ '
export XDG_RUNTIME_DIR=/tmp
export NIX_SSL_CERT_FILE=/etc/ssl/cert.pem

if [ -n "$SSH_CONNECTION" ] ; then
	PS1=$(hostname)$PS1
fi
