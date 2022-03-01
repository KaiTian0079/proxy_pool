#!/usr/bin/env bash
#删除进程
kill -9 $(ps -ef | grep 'python proxyPool.py' | awk '{print $2}')

#后台重新启动进程
nohup python proxyPool.py server > /home/open_sources/proxy_pool/proxyPool-server.log 2>&1 & 
nohup python proxyPool.py schedule > /home/open_sources/proxy_pool/proxyPool-schedule.log 2>&1 & 