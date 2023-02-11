#
# Launch the build command inside of build container
#

SCRIPT_PATH="`dirname \"$0\"`"

SRCPATH=`dirname $SCRIPT_PATH`
SRCPATH=`realpath $SRCPATH`
SRCPATH=`dirname $SRCPATH`


docker run --rm -v $SRCPATH:/src handbrake_builder /bin/bash -c /src/docker/buildCmd.sh
