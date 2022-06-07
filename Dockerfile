FROM debian:10

ADD imagescan-bundle-debian-10-3.65.0.x64.deb.tar.gz /opt/
RUN cd /opt/imagescan-bundle-debian-10-3.65.0.x64.deb/ && ./install.sh
COPY ./scan.sh /opt/
ENTRYPOINT ["/opt/scan.sh"]
