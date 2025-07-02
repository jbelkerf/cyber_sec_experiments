#!/bin/bash
exec 3<> /dev/tcp/127.0.0.1/1448 
# Using your original approach with the fix for sending to the socket
while IFS= read -r line <&3; do
    echo "Received: $line" >&2  # Print everything to stderr for debug

    if [[ "$line" == *"CHALLENGE! Please send the solution for:"* ]]; then
        # Extract expression part after the colon
        expr=$(echo "$line" | sed 's/.*solution for: \(.*\)/\1/' | tr -d '[:space:]')
        
        echo "Solving expression: $expr" >&2
        
        # Evaluate the expression
        result=$(( expr ))
        
        echo "Result: $result" >&2
        
        # Send result back to the server (this is the key fix)
        # We're writing to the socket because the script's stdin/stdout are redirected
        echo  $result >&3
        sleep 1
    fi
done 