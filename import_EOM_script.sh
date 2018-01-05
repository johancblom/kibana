#!/usr/local/bin/expect -f

exp_internal 1

set timeout 18000

set send_slow {1.120}

spawn ssh localhost

expect -re ".*password:"
send "vagrant\r"

expect "$ "

send "scp optsys@10.2.65.201:/home/optsys/blomjo/EOM.csv.gz .\r"

expect -re ".*password:"
send "optsys1\r"

expect "$ "

send "gunzip EOM.csv.gz\r"

expect -re  ".*overwrite.* "

send "y\r"

expect "$ "

send "cd logstash-5.5.1\r"

expect "5.5.1$ "


send "cd bin\r"

expect "bin$ "

puts "running logstash"

send "./logstash -f ../logstash_eom.conf\r"

expect "123abc$ "

exit
