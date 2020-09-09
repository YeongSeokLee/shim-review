This repo is for review of requests for signing shim.  To create a request for review:

- clone this repo
- edit the template below
- add the shim.efi to be signed
- add build logs
- commit all of that
- tag it with a tag of the form "myorg-shim-arch-YYYYMMDD"
- push that to github
- file an issue at https://github.com/rhboot/shim-review/issues with a link to your branch

Note that we really only have experience with using grub2 on Linux, so asking
us to endorse anything else for signing is going to require some convincing on
your part.

Here's the template:

-------------------------------------------------------------------------------
What organization or people are asking to have this signed:
-------------------------------------------------------------------------------
[TmaxOS]

-------------------------------------------------------------------------------
What product or service is this for:
-------------------------------------------------------------------------------
[TmaxOS]

-------------------------------------------------------------------------------
What's the justification that this really does need to be signed for the whole world to be able to boot it:
-------------------------------------------------------------------------------
[We hope TmaxOS will support Secure Boot]

-------------------------------------------------------------------------------
Who is the primary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: YeongSeok Lee
- Position: TmaxOS Researcher
- Email address: yeongseok_lee@tmax.co.kr
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:

-------------------------------------------------------------------------------
Who is the secondary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Taewoo Leem
- Position: TmaxOS Researcher
- Email address: taewoo_leem@tmax.co.kr
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:

-------------------------------------------------------------------------------
What upstream shim tag is this starting from:
-------------------------------------------------------------------------------
[Tag 15]

-------------------------------------------------------------------------------
URL for a repo that contains the exact code which was built to get this binary:
-------------------------------------------------------------------------------
[Debian Buster http://ftp.debian.org/debian/pool/main/s/shim/]

-------------------------------------------------------------------------------
What patches are being applied and why:
-------------------------------------------------------------------------------
[No patches have been applied]

-------------------------------------------------------------------------------
What OS and toolchain must we use to reproduce this build?  Include where to find it, etc.  We're going to try to reproduce your build as close as possible to verify that it's really a build of the source tree you tell us it is, so these need to be fairly thorough. At the very least include the specific versions of gcc, binutils, and gnu-efi which were used, and where to find those binaries.
-------------------------------------------------------------------------------
[gnu-efi: 3.0.9-1, gcc-7: 7.4.0-6, libelf-dev: 0.176-1.1, sbsigntool: 0.9.2-2, openssl: 1.1.1d-0+deb10u3, pesign: 0.112-5]

-------------------------------------------------------------------------------
Which files in this repo are the logs for your build?   This should include logs for creating the buildroots, applying patches, doing the build, creating the archives, etc.
-------------------------------------------------------------------------------
[build-shimx64.log]

-------------------------------------------------------------------------------
Add any additional information you think we may need to validate this shim
-------------------------------------------------------------------------------
[None]
