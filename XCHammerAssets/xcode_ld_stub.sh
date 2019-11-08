#!/bin/bash
set -e
SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
pushd "$SCRIPTPATH/.." > /dev/null

echo "$@"
while [[ $# -gt 0 ]]
do
    case $1 in
        -dependency_info)
           shift
           shift
           mkdir -p "$(dirname $1)"
           echo "ditto $SCRIPTPATH/dependency_info_Stub.dat "$1""
           ditto $SCRIPTPATH/dependency_info_Stub.dat "$1"
            ;;
        *)
            shift # past argument
            ;;
    esac
done