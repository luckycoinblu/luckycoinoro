#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.luckycoinoro/luckycoinorod.pid file instead
export LC_ALL=C

luckycoinoro_pid=$(<~/.luckycoinoro/testnet3/luckycoinorod.pid)
sudo gdb -batch -ex "source debug.gdb" luckycoinorod ${luckycoinoro_pid}
