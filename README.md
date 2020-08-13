# NodeJS and MongoDB on Vagrant

## Prerequisite
1. [VirtualBox](https://www.virtualbox.org/) 
2. [Vagrant](https://www.vagrantup.com/downloads.html) 

## Procedure
1. `git clone https://github.com/olufuwatobi/node-express-mongoose-demo-on-aws.git ~/njmdbv`
2. `cd ~/njmdbv`
3. `git checkout vagrant`
4. run `vagrant up`
5. then enter `192.168.56.101:3000` in the browser once the download is complete.

## To stop and delete the whole VM
run `vagrant destroy -f`