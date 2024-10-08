# Run as Administrator in CMD: 
Logman.exe create counter 5secinterval -f bincirc -v mmddhhmm -max 512 -c "\LogicalDisk(*)\*" "\Memory\*" "\Cache\*" "\Network Interface(*)\*" "\Paging File(*)\*" "\PhysicalDisk(*)\*" "\Processor(*)\*" "\Processor Information(*)\*" "\Process(*)\*" "\Redirector\*" "\Server\*" "\System\*" "\Server Work Queues(*)\*" "\Terminal Services\*" -si 00:00:05 

# You can then start and stop the log with the following commands: 
logman start 5secinterval  
logman stop 5secinterval 

 
# PAL2 PerfMon Capture Analyzer Tool: 
https://github.com/clinthuffman/PAL 