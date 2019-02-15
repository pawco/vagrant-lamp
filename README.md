# Vagrant LAMP 
Complete Vagrant LAMP setup for dev environment based on Debian 9 (Stretch) with Apache 2.4, PHP 7.3 and MySQL 5.7.
Composer and Node are available for easy package management.
 
Keep in mind that this box **is not build with security in mind**. That means that there is no firewall installed, principle of least privilege not followed, MySQL password is easy to guess and used directly in command line etc  

## Requirements
  - VirtualBox  http://www.virtualbox.org
  - Vagrant http://www.vagrantup.com
  - Git http://git-scm.com/

## What is inside?
 * Debian 9 (Stretch)
 * Apache 2.4 with mod rewrite enabled
 * PHP 7.3
 * MySQL 5.7
 * Composer
 * Node
 
## Included PHP packages
  * php7.3-pdo 
  * php7.3-mysql 
  * php7.3-mbstring 
  * php7.3-xml
  * php7.3-intl 
  * php7.3-tokenizer 
  * php7.3-gd
  * php7.3-imagick 
  * php7.3-curl 
  * php7.3-zip
  * php-xdebug
  
## Usage
```bash
mkdir myNewLampSetup
cd myNewLampSetup
git clone https://github.com/pawco/vagrant-lamp.git .
vagrant up
```
After provisioning is done, open your favorite browser and enter IP address (192.168.33.230).

For ssh access type:
```bash
vagrant ssh
```
And that's it. Fully featured web server is ready, composer and npm are available for package management. 
## Fun facts
 - IP address of your newly created box is *192.168.33.230*
 - document root is */vagrant/source/public* 
 - Directory shared with Host OS is /vagrant/source
 - mod rewrite will be enabled
 - MySQL user/password is root/toor
 - XDebug idekey = PHP_STORM
 - Remote port for XDebug is 9001
 - *ll* alias will work
 - *db* is alias for *mysql -u root -ptoor*, for quick access to MySQL 
 
## More fun facts
Add following code to your */etc/hosts* (Linux/macOS):
```
192.168.33.230   somehost.dev
```
and than you can use *somehost.dev* in your browser instead of IP address.

Of course, you can change *somehost.dev* to whatever you like.
 
Have Fun!
