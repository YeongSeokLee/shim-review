FROM bdg97119/tmaxos:lastest

# install packages
RUN sed -i 's/#//g' /etc/apt/sources.list
RUN echo 'deb-src http://tos-repo.tmaxos.com/tmax tmax-oe main contrib non-free tos' >> /etc/apt/sources.list
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y devscripts git-buildpackage software-properties-common git gnu-efi sbsigntool libelf-dev gcc-7 pesign


##############
#### SHIM ####
##############
# 1. build original shim package and make hexdump
RUN apt source shim-unsigned=15+1533136590.3beb971-7+deb10u1
WORKDIR /shim-15+1533136590.3beb971
RUN debuild -us -uc
WORKDIR /
RUN hexdump -Cv /shim-15+1533136590.3beb971/shimx64.efi > orig
RUN rm -rf /shim-15+1533136590.3beb971

# 2. build shim included TmaxOS certifiaction and make hexdump
RUN apt source shim-unsigned=15+1533136590.3beb971-7+deb10u1+tos5u1
WORKDIR /shim-15+1533136590.3beb971
RUN debuild -us -uc
WORKDIR /
RUN hexdump -Cv /shim-15+1533136590.3beb971/shimx64.efi > build

# 3. download shim from shim-review git repo and make hexdump
RUN git clone https://github.com/YeongSeokLee/shim-review.git shim-review
RUN hexdump -Cv /shim-review/shimx64.efi > review

# 4. compare 3 hexdumps
RUN diff -u orig build > orig_build_diff.log
RUN diff -u build review > build_review_diff.log


##############
#### GRUB ####
##############
# 1. download original grub and repackaged grub
RUN apt source grub2=2.02+dfsg1-20+deb10u2
RUN mv grub2-2.02+dfsg1/ grub2-2.02+dfsg1_orig
RUN apt source grub2=2.02+dfsg1-20+deb10u2+tos5u1
RUN mv grub2-2.02+dfsg1/ grub2-2.02+dfsg1_tmaxos

# 2. compare
RUN diff -r grub2-2.02+dfsg1_orig grub2-2.02+dfsg1_tmaxos


################
#### Kernel ####
################
# 1. download original kernel and repackaged kernel
RUN apt source linux=4.19.146-1
RUN mv linux_4.19.146 linux_4.19.146_orig
RUN apt source linux=4.19.146-1+tos5u1
RUN mv linux_4.19.146 linux_4.19.146_tmaxos

# 2. compare
RUN diff -r linux_4.19.146_orig linux_4.19.146_tmaxos
