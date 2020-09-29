FROM tmaxos:lastest

# install packages
RUN sed -i 's/#//g' /etc/apt/sources.list
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y devscripts git-buildpackage software-properties-common git gnu-efi sbsigntool libelf-dev gcc-7 pesign

# build original shim package
RUN apt source shim-unsigned=15+1533136590.3beb971-7+deb10u1
WORKDIR /shim-15+1533136590.3beb971
RUN debuild -us -uc

# create hexdump of orig shim bootloader
WORKDIR /
RUN hexdump -Cv /shim-15+1533136590.3beb971/shimx64.efi > orig

# create hexdump of shim bootloader included TmaxOS certification
RUN git clone https://github.com/YeongSeokLee/shim-review.git shim-review
RUN hexdump -Cv /shim-review/shimx64.efi > build

RUN diff -u orig build > diff.log
