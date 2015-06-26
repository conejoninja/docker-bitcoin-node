Docker container for a bitcoin node, includes bitcoind and a bootstrap script for a fast start.


### Usage

To run it:

    $ docker run -d -v /path/to/data/:/root/.bitcoin --name bitcoind -p 8833:8833 -p 8832:8832 conejo/bitcoin-node


### Notes

* You could place a bitcoin.conf (bitcoind configuration file) under /path/to/data if you want to customize it.



## Contributing to docker-bitcoin-node:

If you find any improvement or issue you want to fix, feel free to send me a pull request with testing.

Feel free to donate some bits : 154pATARwRgncvP6mgA58J2RQ4avYKpLyR