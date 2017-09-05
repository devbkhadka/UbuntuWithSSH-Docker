# Don't remove this command, it is needed to start ssh server when docker is started
/usr/sbin/sshd

# You can add your other commands here like starting your http server etc. 
#which will be called when container is started

# You need to run a long running service at the end of this file so that docker contain is not
# terminated immediately, like starting your HTTP server in forground 
# or un-comment following command
#touch root/temp.log && tail -f root/temp.log