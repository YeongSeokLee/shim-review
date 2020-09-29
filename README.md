This repo is for review of requests for signing shim.  To create a request for review:

- clone this repo
- edit the template below
- add the shim.efi to be signed
- add build logs
- add any additional binaries/certificates/hashes that may be needed
- commit all of that
- tag it with a tag of the form "myorg-shim-arch-YYYYMMDD"
- push that to github
- file an issue at https://github.com/rhboot/shim-review/issues with a link to your branch
- approval is ready when you have accepted tag

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
[Debian Buster http://deb.debian.org/debian
http://ftp.debian.org/debian/pool/main/s/shim/]

-------------------------------------------------------------------------------
What patches are being applied and why:
-------------------------------------------------------------------------------
[No patches have been applied]

-------------------------------------------------------------------------------
If bootloader, shim loading is, grub2: is CVE-2020-10713 fixed ?
-------------------------------------------------------------------------------
[your text here]

-------------------------------------------------------------------------------
If bootloader, shim loading is, grub2, and previous shims were trusting affected
by CVE-2020-10713 grub2:
* were old shims hashes provided to Microsoft for verification
  and to be added to future DBX update ?
* Does your new chain of trust disallow booting old, affected by CVE-2020-10713,
  grub2 builds ?
-------------------------------------------------------------------------------
[your text here]

-------------------------------------------------------------------------------
If your boot chain of trust includes linux kernel, is
"efi: Restrict efivar_ssdt_load when the kernel is locked down"
upstream commit 1957a85b0032a81e6482ca4aab883643b8dae06e applied ?
Is "ACPI: configfs: Disallow loading ACPI tables when locked down"
upstream commit 75b0cea7bf307f362057cc778efe89af4c615354 applied ?
-------------------------------------------------------------------------------
[your text here]


-------------------------------------------------------------------------------
If you use vendor_db functionality of providing multiple certificates and/or
hashes please briefly describe your certificate setup. If there are whitelisted hashes
please provide exact binaries for which hashes are created via file sharing service,
available in public with anonymous access for verification
-------------------------------------------------------------------------------
[your text here]

-------------------------------------------------------------------------------
What OS and toolchain must we use to reproduce this build?  Include where to find it, etc.  We're going to try to reproduce your build as close as possible to verify that it's really a build of the source tree you tell us it is, so these need to be fairly thorough. At the very least include the specific versions of gcc, binutils, and gnu-efi which were used, and where to find those binaries.
If possible, provide a Dockerfile that rebuilds the shim.
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
