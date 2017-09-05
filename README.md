# UbuntuWithSSH-Docker
This is docker image of Ubuntu with ssh server enabled. You can run the docker container and connect to it using SSH (private key).

## Steps to use
- Download or clone the UbuntuWithSSH-Docker project from github (https://github.com/devbkhadka/UbuntuWithSSH-Docker)
- Open you terminal and cd to root of UbuntuWithSSH-Docker project
- The project also contains rsa private and public key. Public key will be copied into docker image and private key will be used to ssh-into container latter. If you already have privte and public key you can replace them but name should be "id_rsa" and "id_rsa.pub".
- Change permission of "id_rsa" file to readonly by owner only with following command
      
      chmod 0400 id_rsa
      
      
- Build docker image with following command. Don't miss the "." at the end
      
      docker build -t ubuntuwithsshexample .
      
      
- After docker image has been created, run following command to run docker container. Option "-d" says run in background (demon mode) and "-p 2222:22" maps hosts port 2222 to containers port 22
      
      docker run -d -p 2222:22 ubuntuwithsshexample
      
      
- Now you can ssh-into the running container with following command
      
      ssh -p 2222 -i id_rsa root@localhost
      
      
## Stop docker container
- Find container id with following command
      
      docker ps
      
      
- Copy container id and run following commands with the container id
      
      docker stop [container id]
      docker rm [container id]
      
      
## Extending this docker image
- You can extend this docker file by adding more docker commands in the docker file
- If you need to run some commands when docker container is started, un-comment few lines on the "Dockerfile" as instructed in comment in the "Dockerfile"
- For ssh to work you need to keep "/usr/sbin/sshd" line in "entrypoint.sh" file. You will need a long running command at the end of entrypoint.sh to prevent docker container from terminating.
- You can add other commands you want to execute when docker is started on the entrypoint.sh file. The command usually would be starting some http server or starting you program.
