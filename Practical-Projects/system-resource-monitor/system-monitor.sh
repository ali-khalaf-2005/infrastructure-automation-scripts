#!/bin/bash
#Variable
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

#fun to check cpu
check_cpu_usage(){
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $3}')
if (( $(echo "$cpu_usage > $CPU_THRESHOLD" | bc -l) )); then
    echo "high cpu usage: $cpu_usage%"
fi
}
#fun to check memory
check_memory_usage(){
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( $(echo "$mem_usage > $MEM_THRESHOLD" | bc -l) ));then
    echo "high memory usage: $mem_usage%"
fi

}
#fun to check disk
check_disk_usage(){
disk_usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]; then
   echo "high disk usage: $disk_usage%"
fi
}
#Run the functions
check_cpu_usage
check_memory_usage
check_disk_usage
