start
p "opening /flag"
set $var = (int)syscall(2, "/flag", 0)

p "reading from /flag to the stack"
call read($var, (char *)$rsp, 100)

p "printing flag"
p (char *)$rsp
