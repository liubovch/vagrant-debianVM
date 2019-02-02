#!/bin/sh

dir=/var/cache/ccache-sbuild
install --group=sbuild --mode=2775 -d $dir
env CCACHE_DIR=$dir ccache --max-size 4G
cat >>/etc/schroot/sbuild/fstab <<END
$dir $dir none rw,bind 0 0
END

cat >$dir/sbuild-setup <<END
#!/bin/sh
export CCACHE_DIR=$dir
export CCACHE_UMASK=002
export CCACHE_COMPRESS=1
unset CCACHE_HARDLINK
export PATH="/usr/lib/ccache:\$PATH"
exec "\$@"
END

chmod a+rx $dir/sbuild-setup
