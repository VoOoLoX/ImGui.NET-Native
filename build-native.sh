#!/usr/bin/env bash

scriptPath="`dirname \"$0\"`"

_CMakeBuildType=Release

while :; do
    if [ $# -le 0 ]; then
        break
    fi

    lowerI="$(echo $1 | awk '{print tolower($0)}')"
    case $lowerI in
        debug|-debug)
            _CMakeBuildType=Debug
            ;;
        release|-release)
            _CMakeBuildType=Release
            ;;
        *)
            __UnprocessedBuildArgs="$__UnprocessedBuildArgs $1"
    esac

    shift
done

if [ "$(uname)" == "Darwin" ]; then
    mkdir -p $scriptPath/build/$_CMakeBuildType/osx-x64
    pushd $scriptPath/build/$_CMakeBuildType/osx-x64
else
    mkdir -p $scriptPath/build/$_CMakeBuildType/linux-x64
    pushd $scriptPath/build/$_CMakeBuildType/linux-x64
fi

cmake ../../.. -DCMAKE_BUILD_TYPE=$_CMakeBuildType
make
popd
