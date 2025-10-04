DWH Coding Challenge SOlution

This Project provides a complete solutio to the DWH (Data Warehouse) coding challenge. It processes event logs for accounts, cards and saving accounts with the target to reconstruct their history, create a denormalized view, and analyze transaction activities made. The solution that is made for the problem is reproducible using Docker as a container system.

Core Logic:
The provided solution mainly use the python libraries Pandas for data manipulation
1. Event loading -> loads events by scanning appropriate subdirectories within the data folder
2. table Recostruction -> The reconstruct_table function process the sorted tables using a dictionary to efficiently build the final state of each record by
                          applying create 'c' and update 'u' i order.
3. Denormalization -> The reconstructed tables (accounts, cards, and saving_accounts) are then joined into a single table using left join
4. Transaction Analysis -> The find_transactions function scans the original event logs for anny update. It reports the number of transactions, when they 
                           occurred and their value.

How to run the script
1. Have Docker installed and running in the system
2. Open windows powershell
3. Navigate solution directory (exmp: documents/to/solutions)
4. us4 this script 'docker build -t dwh-challenge -f ./solution/Dockerfile .'
5. and finally this last script to run the program 'docker run --rm dwh-challenge'