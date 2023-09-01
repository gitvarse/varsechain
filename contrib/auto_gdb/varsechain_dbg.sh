#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.varsechaincore/varsechaind.pid file instead
varsechain_pid=$(<~/.varsechaincore/testnet3/varsechaind.pid)
sudo gdb -batch -ex "source debug.gdb" varsechaind ${varsechain_pid}
