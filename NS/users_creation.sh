#execute this script as root user 
#/bin/bash
for i in $(cat users_list)
do
useradd $i;
cd /home/$i;
mkdir -p .ssh;
chmod 700 .ssh;
touch .ssh/authorized_keys;
chmod 400 .ssh/authorized_keys;
case $i in
vishnul)
x="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGXd5y2upvOmqQAmESy/lpbrGAgrPOPvgysi3BQYXiHN vishnuvardhan.lanka@kore.com"
echo "$x" > /home/$i/.ssh/authorized_keys
chown ${i}.${i} .ssh
chown ${i}.${i} .ssh/authorized_keys
;;
jayeshj)
x="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJAeA65TRc3Xk2RVqpGKwFY7gOjeZHIbK+KdsWkJfQIn jayesh.jain@kore.com"
echo "$x" > /home/$i/.ssh/authorized_keys
chown ${i}.${i} .ssh
chown ${i}.${i} .ssh/authorized_keys
;;
esac
done
