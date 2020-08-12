### NodeJS and MongoDB on Vagrant

## Prerequisite
1. [VirtualBox](https://www.virtualbox.org/) 
2. [Vagrant](https://www.vagrantup.com/downloads.html) 

## Procedure
1. `git clone https://github.com/olufuwatobi/node-express-mongoose-demo-on-aws.git ~/njmdb`
2. `cd njmdb`
3. `git checkout vagrant`
4. run `vagrant up`
5. then enter `192.168.56.101` in the browser 

# To stop and delete the whole VM
run `vagrant destroy -f`