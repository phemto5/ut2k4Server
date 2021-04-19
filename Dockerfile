FROM debian:latest
RUN echo "password password none none none none none Y" | adduser ut2k4server 
RUN apt update
RUN apt install python3 cpio wget diffutils epel-release python36 file bzip2 unzip bc jq tmux nmap-ncat glibc.i686 libstdc++.i686 procps  -y 
RUN su - ut2k4server 
RUN wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh ut2k4server \
&& ./ut2k4server ul \
&& ./ut2k4server ai \
RUN echo "SRVER-8BD3N-DG6CD-HCNAB" | ./ut2k4server cd  

ENTRYPOINT [ "./ut2k4server", "start" ]

EXPOSE 7777-7788/udp 27900/udp 42292/udp 8075/udp
EXPOSE 7777-7788/tcp 27900/tcp 42292/tcp 8075/tcp
