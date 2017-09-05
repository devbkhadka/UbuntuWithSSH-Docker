FROM devkhadka/ubuntuwithssh:1.0.2

##If you need to run some command when docker is started un-comment following three lines 
##and add your scripts in entrypoint.sh file in root of this project
#ADD entrypoint.sh /root/entrypoint.sh
#RUN chmod 777 /root/entrypoint.sh
#ENTRYPOINT /root/entrypoint.sh