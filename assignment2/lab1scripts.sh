sudo echo "192.168.50.53 email2" >> /etc/hosts
sudo echo "192.168.50.51 email2" >> /etc/hosts
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install postfix
sudo apt-get install procmail
sudo apt-get install spamassassin
sudo apt-get install mailutils

echo "mynetworks = 192.168.50.53/24" >> /etc/postfix/main.cf
echo "disable_vrfy_command = yes" >> /etc/postfix/main.cf
echo "smtpd_etrn_restrictions = reject" >> /etc/postfix/main.cf

