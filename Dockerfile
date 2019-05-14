FROM rethinkdb:2.3.6

MAINTAINER Luke Bennett <luke@lukebennett.com>

COPY giddyup /usr/bin/

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["rethinkdb-cluster"]
