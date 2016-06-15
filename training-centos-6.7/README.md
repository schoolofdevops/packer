###Build packer image using command line:-

 Edit **vars.json.template** file according to you environment.   
    
**Run packer command with default environment** 
  
    sudo packer build -var-file=training-centos-6.7/vars.json.template training-centos-6.7/iptl.json

**To enable logs and run for a virtual box iso**   
	
	  export PACKER_LOG_PATH=./log &&  export  PACKER_LOG=1 && packer build -var-file=training-centos-6.7/vars.json.template -only=virtualbox-iso training-centos-6.5/iptl.json**	 
      
      
###Build using jenkins:-

**Git url**

      https://github.com/ashwini9860/packer.git
      
**Execute shell command**

        export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/puppetlabs/bin
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/install.tar.gz
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/repo/chef.tar.gz
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/repo/docker.tar.gz
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/repo/java.tar.gz
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/repo/lamp.tar.gz
        
        sudo /usr/local/bin/wget https://s3-us-west-2.amazonaws.com/packer-initcron/repo/puppet.tar.gz
        
        sudo /usr/local/bin/packer build -var-file=training-centos-6.7/vars.json.template training-centos-6.7/iptl.json
        
  
###Note-
  
  iso image must be in project directory before running packer      
