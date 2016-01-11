##Introduction

The projects under this repository enable easy provisioning of cassandra (DSC) clusters in different confiutations.

##Tools used

* [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads)
* [Ansible](http://docs.ansible.com/intro_installation.html)

if you don't have either of the tools above, you'll need to install it.

### Install Virtualbox
Click on the 'Virtualbox' link above to download the .dmg file and double-click on it to follow  the installation instructions.
### Install Vagrant
Click ont the 'Vagrant' link above to download the .dmg file and double-click on it to follow the installation instructions.
### Install Ansible
On your osx terminal, type:
 
```$ brew update; brew install ansible```

##Provisioning different Clusters

Clone the project:
 
```git clone https://dialla1@bitbucket.org/dialla1/virtual-machines.git```

###DSC-1

This will build a single node cassandra DSC cluster, with no OpsCenter.

```node: cassandra01, ip: 192.168.1.11, user: vagrant```

Run the below command to provision this cluster.

```cd DSC-1; vagrant up```

###DSC-3

This will build a two node cassandra DSC cluster along with one OpsCenter node.

```node: cassandra01, ip: 192.168.1.11, user: vagrant```
```node: cassandra02, ip: 192.168.1.22, user: vagrant```
```node: opscenter, ip: 192.168.1.10, user: vagrant```

Run the below command to provision this cluster.

```cd DSC-3; vagrant up```

This will take saveral minutes for the first time to build your cluster of choice.
