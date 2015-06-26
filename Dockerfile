FROM debian:8

MAINTAINER  Daniel Esteban <conejo@conejo.me>
RUN         apt-get update && apt-get install -y supervisor wget aria2

RUN        	wget https://bitcoin.org/bin/bitcoin-core-0.10.2/bitcoin-0.10.2-linux64.tar.gz && \
           	tar xzf bitcoin-0.10.2-linux64.tar.gz && \
           	cp /bitcoin-0.10.2/bin/* /usr/bin/ && \
           	rm bitcoin-0.10.2-linux64.tar.gz && \
           	rm -R /bitcoin-0.10.2


ADD         ./bin/* /usr/local/bin/
RUN         chmod a+x /usr/local/bin/entry_point && \
            chmod a+x /usr/local/bin/blockchain_bootstrap && \
            chmod a+x /usr/local/bin/docker_config && \
            chmod a+x /usr/local/bin/start-bitcoind

ADD         ./supervisor/* /etc/supervisor/conf.d/

EXPOSE      8332 8333

CMD ["entry_point"]

