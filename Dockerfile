#pull base image   
#FROM命令必须是Dockerfile的首个命令。
FROM guoxiangfeng/lnmp:latest

#MAINTAINER 
MAINTAINER guoxiangfeng

# Usage: ENV key value
ENV SERVER_WORKS 4

#run command
run mkdir /demo

#Usage: ADD [source directory or URL] [destination directory]
#ADD ./code /demo

# Usage 1: CMD application "argument", "argument", ..
#和RUN不同的是，这些命令不是在镜像构建的过程中执行的，而是在用镜像构建容器后被调用。
CMD echo Hello world

# Expose ports. 
#指定端口，使容器内的应用可以通过端口和外界交互。 
EXPOSE 9001

# Usage: VOLUME ["/dir_1", "/dir_2" ..]
VOLUME ~/web 
