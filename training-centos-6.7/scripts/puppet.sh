# Instal Open Source version 4.3  of Puppet 
#RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
#rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-${RELEASE}.noarch.rpm
yum install -y puppet-agent

# To install Puppet Master/Server
#yum install -y puppetserver

# To install Puppet DB
#yum install -y puppetdb

#Plugin to connet PuppetDB with Puppet Server. Must install along with  PuppetDB
#yum install -y puppetdb-termini


