FROM kalilinux/kali-linux-docker
MAINTAINER Luca Marcelli

RUN apt-get update
# general
RUN apt-get install -y git build-essential python python3 unzip ssh php python3-pip python-pip binwalk cmake ftp mariadb-server nodejs npm netcat socat
RUN pip install requests && pip3 install requests
RUN pip install beautifulsoup4 && pip3 install beautifulsoup4
# reverse engineering
RUN apt-get install -y gdb radare2 apktool
RUN git clone https://github.com/longld/peda.git ~/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit
RUN pip install keystone-engine && pip3 install keystone-engine
RUN pip install capstone && pip3 install capstone
RUN pip install pwntools && pip3 install pwntools
# web
RUN apt-get install -y metasploit-framework nmap masscan dirb dnsutils sqlmap mitmproxy wfuzz nikto wpscan
# stego
RUN apt-get install -y steghide exiftool
# bruteforce
RUN apt-get install -y wordlists hashcat hydra
RUN gunzip /usr/share/wordlists/rockyou.txt.gz