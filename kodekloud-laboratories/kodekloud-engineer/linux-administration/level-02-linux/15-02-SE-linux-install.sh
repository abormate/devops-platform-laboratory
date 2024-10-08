# -------------------------------------- #
#
# -- Linux -- SE -- Installation --
#
# -------------------------------------- #

: '
The xFusionCorp Industries security team recently did a security audit 
of their infrastructure and came up with ideas to improve the 
application and server security. They decided to use SElinux for an 
additional security layer. They are still planning how they will 
implement it; however, they have decided to start testing with app 
servers, so based on the recommendations they have the following 
requirements: 

Install the required packages of SElinux on App server 2 
in Stratos Datacenter and disable it permanently for now; it will be 
enabled after making some required configuration changes on this host. 
Dont worry about rebooting the server as there is already a 
reboot scheduled for tonights maintenance window. Also ignore the 
status of SElinux command line right now; the final status after 
reboot should be disabled.

'

ssh worker@stapp02

sudo su -

# Install SELinux packages: Run the following command with root privileges to install the required SELinux packages:

sudo yum install policycoreutils policycoreutils-python selinux-policy selinux-policy-targeted

# To disable SELinux permanently, modify the SELinux configuration file. Run the following command with root privileges to open the SELinux configuration file in a text editor:

sudo vi /etc/selinux/config

SELINUX=disabled