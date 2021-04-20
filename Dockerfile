FROM debian:latest
RUN echo "p p n n n n n Y " | adduser ut2k4server 
# RUN usermod -aG sudo ut2k4server
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install procps curl wget file tar bzip2 gzip unzip bsdmainutils python python3 cpio util-linux ca-certificates binutils bc jq tmux netcat lib32gcc1 lib32stdc++6 -y
RUN echo 'wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh ut2k4server' | su - ut2k4server
RUN echo "./ut2k4server i" | su - ut2k4server
RUN echo "./ut2k4server st" | su - ut2k4server
# RUN echo "Y Y Y SRVER-8BD3N-DG6CD-HCNAB  Y Y " | echo "./ut2k4server i" | su - ut2k4server
# RUN echo 'echo "SRVER-8BD3N-DG6CD-HCNAB" | ./ut2k4server cd ' | su - ut2k4server

ENTRYPOINT ["/bin/bash/","watch","uptime" ]

EXPOSE 7777-7788/udp 27900/udp 42292/udp 8075/udp
EXPOSE 7777-7788/tcp 27900/tcp 42292/tcp 8075/tcp
