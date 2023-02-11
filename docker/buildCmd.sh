#
# Build Handbrake from source; assumes the source is in /src
#

cd /src
./configure --cross=x86_64-w64-mingw32 --launch-jobs=$(nproc) --launch --enable-fdk-aac --force