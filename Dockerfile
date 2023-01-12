FROM debian:latest

RUN apt update -y
RUN apt upgrade -y

RUN apt -y install git python3 python3-pip sudo 

RUN mkdir -p /opt
RUN cd /opt && git clone https://github.com/xtiankisutsa/MARA_Framework.git

RUN bash /opt/MARA_Framework/setup.sh || true
RUN bash /opt/MARA_Framework/setup.sh || true

WORKDIR /opt/MARA_Framework

CMD ["/bin/bash", "/opt/MARA_Framework/mara.sh"]