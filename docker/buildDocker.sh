#
# Build Ubuntu image used for compiling Handbrake
#

SCRIPT_PATH="`dirname \"$0\"`"

cp $SCRIPT_PATH/../scripts/mingw-w64-build $SCRIPT_PATH/
docker build . -t handbrake_builder
rm $SCRIPT_PATH/mingw-w64-build