#!/bin/bash
echo "restore /app"
rm -R /app/*
tar -xpzf /backup/app.tar.gz -C /

echo "restore etc/mysql"
rm -R /etc/mysql/*
tar -xpzf /backup/etc-mysql.tar.gz -C /

echo "restore var/lib/mysql"
rm -R /var/lib/mysql/*
tar -xpzf /backup/var-lib-mysql.tar.gz -C /

