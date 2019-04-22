FROM kalilinux/kali-linux-docker
MAINTAINER Luca Marcelli

RUN apt-get update
RUN apt-get install -y git gdb radare2 build-essential metasploit-framework nmap masscan dirb dig python python3 unzip ssh php