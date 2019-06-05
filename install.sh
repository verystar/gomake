#!/usr/bin/env bash

fail() {
	echo -e "\033[31m $1 \033[0m"
	exit 1
}

initDownloadTool() {
	if type "curl" > /dev/null; then
		DOWNLOAD_TOOL="curl"
	elif type "wget" > /dev/null; then
		DOWNLOAD_TOOL="wget"
	else
		fail "You need curl or wget as download tool. Please install it first before continue"
	fi
	echo "Using $DOWNLOAD_TOOL as download tool, install gomake"
}

getFile() {
	local url="$1"
	local filePath="$2"
	if [ "$DOWNLOAD_TOOL" = "curl" ]; then
		curl -L "$url" -o "$filePath"
	elif [ "$DOWNLOAD_TOOL" = "wget" ]; then
		wget -O "$filePath" "$url"
	fi
}

install() {
    DOWNLOAD_MAKESHELL_URL=https://raw.githubusercontent.com/ilibs/gomake/master/make.sh
    DOWNLOAD_MAKEFILE_URL=https://raw.githubusercontent.com/ilibs/gomake/master/Makefile
    TOPATH=./
    getFile "${DOWNLOAD_MAKESHELL_URL}" "${TOPATH}"make.sh
    getFile "${DOWNLOAD_MAKEFILE_URL}" "${TOPATH}"Makefile
}

initDownloadTool
install
