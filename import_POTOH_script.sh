#!/usr/local/bin/expect -f

exp_internal 1

set timeout 360

set send_slow {1.120}

spawn ssh localhost

expect -re ".*password:"
send "vagrant\r"

expect "$ "

send "scp optsys@10.2.65.201:/home/optsys/blomjo/POTOH.csv.gz /tmp\r"

expect -re ".*password:"
send "optsys1\r"

expect "$ "

send "gunzip -f /tmp/POTOH.csv.gz\r"

expect "$ "

send "mv -f /tmp/POTOH.csv ~\r"

expect "$ "

exit
