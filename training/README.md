###Build packer image using command line:-

 Edit **vars.json.template** file according to you environment.   
    
**Run packer command with default environment** 
  
    sudo packer build -var-file=training/vars.json.template training/iptl.json

**To enable logs and run for a virtual box iso**   
	
	  export PACKER_LOG_PATH=./log &&  export  PACKER_LOG=1 && packer build -var-file=training/vars.json.template -only=virtualbox-iso training/iptl.json**	 
      
      
###Build using jenkins:-

**Git url**

      https://github.com/ashwini9860/packer.git
      
**Execute shell command**

       export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/puppetlabs/bin
       sudo /usr/local/bin/aws s3 sync s3://packer-initcron .
       sudo /usr/local/bin/packer build -var-file=training/vars.json.template training/iptl.json
        
  
###Note-
  
  iso image require on your machine, here it require in current dir. you can modify path as per your environment.
  
  
  
  
