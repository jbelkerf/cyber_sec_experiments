start
break *main + 572
commands
    p/x $rsi  
    ni
    continue
end
break *main + 577
commands
    set *(long long *)$rsi = 10
    x/gx $rsi
    continue
end
break *main + 625
commands
    set $rip = $rip + 5
    set $rax = 1
    set *(long long *)$rsi = 10
    continue
end
continue
