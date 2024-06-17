#!/bin/bash

# PROXY_URL="192.168.1.2:9300"

export http_proxy="192.168.1.2:9300"
export HTTP_PROXY="192.168.1.2:9300"

export https_proxy="192.168.1.2:9300"
export HTTPS_PROXY="192.168.1.2:9300"

export socks_proxy="192.168.1.2:9600"
export SOCKS_PROXY="192.168.1.2:9600"

export no_proxy="localhost, 127.0.0.1, ::1, 192.168.1.0"
export NO_PROXY="localhost, 127.0.0.1, ::1, 192.168.1.0"

