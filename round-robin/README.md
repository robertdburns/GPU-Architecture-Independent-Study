# Round Robin Scheduler

Done for CPE400 by Robert Burns, Lab for CPE470 Winter 2026

# Getting Started

- start by creating a file, ```round_robin.sv```
- it should be parameterized with the following parameter:
	- ```NumRequests``` - the maximum number of requests the round robin arbiter will take
- it should take these inputs:
	- ```logic clk``` - your clock signal
	- ```logic rst``` - active high, resets all grants
	- ```logic [NumRequests-1:0] rqst``` - signal dictating which processes are active and requesting resources
	- ```logic [NumRequests-1:0] grnt``` - signal showing which process is allowed to access resources on this clock cycle 

