#!/usr/local/bin/expect -f

set ENV [lindex $argv 0]
set SERVER [lindex $argv 1]
set USER [lindex $argv 2]

set timeout 180
spawn ssh optsys@10.2.65.201

expect -re ".*password:"
send "optsys1\r"

expect "$ "

send "cd blomjo\r"

send "scp blomjo@10.170.162.27:~/EOM.csv.gz .\r"

expect -re ".*password:"

send "CB351bn#\r"

expect "$ "

send "exit\r"

