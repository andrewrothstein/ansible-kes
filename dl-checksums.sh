#!/usr/bin/env bash
set -e
DIR=~/Downloads
MIRROR=https://github.com/minio/kes/releases/download

# https://github.com/minio/kes/releases/download/v0.13.6/kes-linux-amd64

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-}
    local platform="${os}-${arch}"
    # https://github.com/minio/kes/releases/download/2023-11-10T10-44-28Z/kes-linux-amd64
    local url="$MIRROR/$ver/kes-${platform}${dotexe}"

    local lfile="$DIR/kes-${ver}-${platform}${dotexe}"
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver windows amd64 .exe
}

dl_ver ${1:-"2023-11-10T10-44-28Z"}
