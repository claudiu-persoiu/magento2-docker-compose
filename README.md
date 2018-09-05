# magento2-docker-compose
Magento2 Docker Compose for local development

### To install:
Add a shortcut to dkc_short file to your bash init file (.bashrc or .bash_profile) using:

    echo `pwd`'/dkc_short' >> ~/.bash_profile 
    source ~/.bash_profile

### Commands
- Start the containers:

    dkc-up -d

- Stop all the containers:

    dkc-down

- Clear cache:

    dkc-clean
    
- To run a Magento console command

    dkc-mag *command*
    
- To run a command inside the PHP container as web user:

    dkc-php-run *command*
    
- To run a command inside the PHP container as root

    dkc-exec phpfpm *command*
    
- Run a command on a container:

    dkc-exec *container_id* *command*
  

### Limitations

Because of xdebug architecture when the public IP of the computer changes the remote debugging stops working. To prevent this please shutdown the machines before connecting to a different network.