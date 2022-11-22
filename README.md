# assignment2
# By
# Mehdi Seyrafi
# Majid Nemati
# Shahrzad Ramezani
# Mehri Tajdini
# 

Steps for the assignment:

1.	Run 'fileserver.sh' in the root folder using command '#sh fileserver.sh'.

2.	It will create the network as 'mynetwork1' with the subnet as '172.168.11.40/29'.

3.	It will create the volume for server as 'servervol'.

3.	It will automatically build the image named as 'serverimage:1.0' using dockerfile placed in the folder named 'server' which will create a file of size 		1KB automatically in '/serverdata' directory which is attached to 'servervol' volume in the container.

4.	In the Dockerfile, the base image 'alpine:latest' is used and packages/apks for the communication are installed.

5.	Also, an account (user & password) is created in it.

6.	Then the server container named as 'ServerContainer' is run in the background using detached mode.

7.	This script will run the 'fileclient.sh' script automatically.

8.	A volume for client named 'clientvol' is created in the mentioned script.

9.	It will also automatically build the image named as 'clientimage:1.0' using Dockerfile placed in the folder named 'client'.

10.	The same base image 'alpine:latest' is used in the Dockerfile and required packages/apks for the communication with other container is installed on it.

11.	The client will download/get the file from the server using 'scp' and then verify its checksum. This operation is done using the 'run_client.sh' script.

12.	The '/clientdata' directory is attached to the volume named as 'clientvol', so that the received file will be saved in the 'clientvol' volume.

13.	Now, it will run the client container named as 'ClientContainer' in the interactive mode. 'ls' command may be used to check the files in the '/clientdata' directory.
