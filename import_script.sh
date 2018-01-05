#!/usr/local/bin/expect -f

exp_internal 1

set timeout 120

set send_slow {1.120}

spawn ssh localhost

expect -re ".*password:"
send "vagrant\r"

expect "$ "

send "scp optsys@10.2.65.201:/home/optsys/blomjo/usageserver.dmp.gz .\r"

expect -re ".*password:"
send "optsys1\r"

expect "$ "


send "gunzip usageserver.dmp.gz\r"

expect -re  ".*overwrite.* "

send "y\r"

expect "$ "

send "psql usageserver -f usageserver.dmp\r"

expect "$ "

send "cd ej-2.3.4.0-dist\r"

expect "dist$ "

send "cd ej-2.3.4.0\r"

expect "0$ "

send "cd bin\r"

expect "$ "

puts "importing usageserver data"

send "./import.sh\r"

expect "123abc$ "

exit
