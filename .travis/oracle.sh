#!/usr/bin/env bash
.travis/oracle/download.sh
.travis/oracle/install.sh
sudo cp $HOME/gopath/src/github.com/dddpaul/reform/.travis/oci8.pc /usr/lib/pkgconfig
go get -u gopkg.in/rana/ora.v3
echo "exit" | $ORACLE_HOME/bin/sqlplus / as sysdba @.travis/change-password.sql
echo "exit" | $ORACLE_HOME/bin/sqlplus "system/oracle@localhost/xe" @sql/init.sql
