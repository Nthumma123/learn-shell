# Disable current module
dnf module disable nodejs -y

#Enable required module
dnf module enable nodejs:20 -y

#Install NodeJS
dnf install nodejs -y

#Add application User

useradd --system --home /app --shell /sbin/nologin --comment "roboshop system user" roboshop

#Lets setup an app directory
mkdir /app

#Download the application code to created app directory.
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip 
cd /app 
unzip /tmp/catalogue.zip

#Lets download the dependencies.
cd /app 
npm install 

#vim /etc/systemd/system/catalogue.service

#Load the service.
systemctl daemon-reload
#Start the service.
systemctl enable catalogue 
systemctl start catalogue

vim /etc/yum.repos.d/mongo.repo
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/9/mongodb-org/7.0/x86_64/
enabled=1
gpgcheck=0

dnf install mongodb-mongosh -y
mongosh --host MONGODB-SERVER-IPADDRESS </app/db/master-data.js

# end of script

