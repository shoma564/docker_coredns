FROM coredns/coredns:latest

EXPOSE 53
EXPOSE 53/udp

ADD volumes/config/ /etc/coredns/

ENTRYPOINT ["/coredns"]
CMD ["-conf", "/etc/coredns/Corefile"]
