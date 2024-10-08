# ---------------------------------------------- #
#
# -- Linux ServerOps -- Postfix Troubleshooting --
#
# ---------------------------------------------- #

: '
Some users of the monitoring app have reported issues 
with xFusionCorp Industries mail server. 

They have a 
mail server in Stork DC where they are using postfix 
mail transfer agent. Postfix service seems to fail. 
Try to identify the root cause and fix it.

'

ssh maintainer@stmail01

# -- enter passwd -- #

sudo su -

cat /etc/os-release

systemctl status postfix 

vi /etc/postfix/main.cf

# -- comment line with interface for localhost -- #

systemctl start postfix 

systemctl status postfix

