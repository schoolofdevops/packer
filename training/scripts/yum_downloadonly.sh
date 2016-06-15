yum install yum-plugin-downloadonly
yum install yum-utils

# To download the package without installing, use
 yum install --downloadonly --downloaddir=/usr/local/repo/puppet puppet

# To download already installed package
# cd <dir>
#yumdownloader <package>

