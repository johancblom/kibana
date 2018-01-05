#!/usr/local/bin/expect -f

exp_internal 1

set timeout 180

set send_slow {1.120}

spawn ssh localhost

expect -re ".*password:"
send "vagrant\r"

expect "$ "

send "scp optsys@10.2.65.201:/home/optsys/blomjo/POTOH.csv .\r"

expect -re ".*password:"
send "optsys1\r"

expect "$ "


send "cd logstash-2.0.0\r"

expect "2.0.0$ "

send "cd bin\r"

expect "bin$ "

puts "running logstash"

send "./logstash -f ../logstash_to.conf\r"

expect "123abc$ "

exit
