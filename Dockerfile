#
# Ubuntu xenial based dockerfile
#

# Pull base image.
FROM ubuntu:16.04

# Install t32 dependencies
RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y libqtgui4:amd64

# Set workdir
RUN mkdir t32
WORKDIR /t32/files/bin/pc_linux64

# Run T32 qt for arm 32bit
CMD ["./t32marm-qt"]
