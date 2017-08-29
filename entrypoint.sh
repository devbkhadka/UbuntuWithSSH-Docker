# Don't remove this command is needed to start ssh server when docker is started
# This command start ssh server in forground server below you can remove -D option
/usr/sbin/sshd -D

# You can add your other entry point commands here like starting your http server etc.