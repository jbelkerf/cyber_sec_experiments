start
  break *main + 709
  commands
    silent
    set $local_variable = *(unsigned long long*)($rsi)
    printf "Current value: %llx\n", $local_variable
    continue
  end
  continue
