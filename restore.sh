#!/bin/bash
echo "restore /app"
rm -R /app/*
tar -xpzf /backup/app.tar.gz -C /tmp/
mv /tmp/app/* /app/
rm -R tmp/app/

echo "restore etc/mysql"
rm -R /etc/mysql/*
tar -xpzf /backup/etc-mysql.tar.gz -C /tmp/
mv /tmp/etc/mysql/* /etc/mysql/
rm -R tmp/etc

echo "restore var/lib/mysql"
rm -R /var/lib/mysql/*
tar -xpzf /backup/var-lib-mysql.tar.gz -C /tmp/
mv /tmp/var/lib/mysql/* /var/lib/mysql/
rm -R tmp/var

