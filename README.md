# Vagrant LAMP 
Complete Vagrant LAMP setup for dev environment based on Debian 9 (Stretch) with Apache 2.4, PHP 7.1 and MySQL 5.7.
Composer and Node are available for easy package management.
 
Keep in mind that this box **is not build with security in mind**, at least for now. That means that there is no firewall installed, principle of least privilege not followed, MySQL password is easy to guess and used directly in command line...)  

## Requirements
  - VirtualBox  http://www.virtualbox.org
  - Vagrant http://www.vagrantup.com
  - Git http://git-scm.com/

## What is inside?
 * Debian 9 (Stretch)
 * Apache 2.4 with mod rewrite enabled
 * PHP 7.1
 * MySQL 5.7
 * Composer
 * Node
 * Vim
 
## Included PHP packages
  * php7.1-pdo 
  * php7.1-mysql 
  * php7.1-mbstring 
  * php7.1-xml
  * php7.1-intl 
  * php7.1-tokenizer 
  * php7.1-gd
  * php7.1-imagick 
  * php7.1-curl 
  * php7.1-zip
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
 
## Tricks

### Access to your MySQL Database remotely:

```bash
# Connect to Vagrant
vagrant ssh
# And edit mysqld.cnf
sudo -i
vim /etc/mysql/mysql.conf.d/mysqld.cnf
```

Edit this line `bind-address    = X.X.X.X` by `bind-address    = 0.0.0.0`.
__(To save your change with vim: `:wq`)__

```bash
# Re-starting MySQL
service mysql reload
```

And add the user `master` (you can change *master* to whatever you like) who can access to your Database remotely:

```sql
CREATE USER "master"@"localhost" IDENTIFIED BY "12345678";
CREATE USER "master"@"%" IDENTIFIED BY "12345678";
GRANT ALL ON *.* TO "master"@"localhost";
GRANT ALL ON *.* TO "master"@"%";
```

## More fun facts
Add following code to your */etc/hosts* (Linux/macOS):
```
192.168.33.230   somehost.dev
```
and than you can use *somehost.dev* in your browser instead of IP address.

Of course, you can change *somehost.dev* to whatever you like.
 
Have Fun!
