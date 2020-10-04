Make sure you have provided the following information:

 - [x] link to your code branch cloned from rhboot/shim-review in the form user/repo@tag
 - [x] completed README.md file with the necessary information
 - [x] shim.efi to be signed
 - [x] public portion of your certificate embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [x] binaries, for which hashes are added do vendor_db ( if you use vendor_db and have hashes whitelisted )
 - [x] any extra patches to shim via your own git tree or as files
 - [x] any extra patches to grub via your own git tree or as files
 - [x] build logs


###### What organization or people are asking to have this signed:
`[TmaxANC]`

###### What product or service is this for:
`[TmaxOS - Debian Buster based Linux OS(https://tmaxanc.com/#!/product-introduce/TmaxOS)]`

###### What is the origin and full version number of your shim?
`[shim 15+1533136590.3beb971-7+deb10u1]`

###### What's the justification that this really does need to be signed for the whole world to be able to boot it:
`[We hope TmaxOS will support Secure Boot]`

###### How do you manage and protect the keys used in your SHIM?
`[Currently the administrator is managing with USB, and HSM will be applied within this month.]`

###### Do you use EV certificates as embedded certificates in the SHIM?
`[No]`

###### If you use new vendor_db functionality, are any hashes whitelisted, and if yes: for what binaries ?
`[No]`

###### Is kernel upstream commit 75b0cea7bf307f362057cc778efe89af4c615354 present in your kernel, if you boot chain includes a linux kernel ?
`[We are based on Debian's 4.19.146-1 version, and we have confirmed that 'ACPI-configfs-Disallow-loading-ACPI-tables-when-lock.patch' corresponds to the 75b0cea7bf307f362057cc778efe89af4c615354 commit.]`

###### if SHIM is loading grub2 bootloader, is CVE CVE-2020-10713 fixed ?
`[Our bootloader is based on Debian's grub2_2.02+dfsg1-20+deb10u2 version, and it has been confirmed that the CVE-2020-10713 issue has been resolved through `CVE-2020-10713.patch`.]`

##### Did you change your certificate strategy, so that affected by CVE CVE-2020-10713 grub2 bootloaders can not be verified ?
`[This is the first time review]`

###### What is the origin and full version number of your bootloader (GRUB or other)?
`[grub2 2.02+dfsg1-20+deb10u2+tos5u1 - There is no modified part of the source code, but we will provide a Dockerfile for checking the source code.]`

###### If your SHIM launches any other components, please provide further details on what is launched
`[None - Currently, fwupd is not supported, but will be applied within this year.]`

###### How do the launched components prevent execution of unauthenticated code?
`[Grub only execute the kernel verified with shim]`

###### Does your SHIM load any loaders that support loading unsigned kernels (e.g. GRUB)?
`[No]`

###### What kernel are you using? Which patches does it includes to enforce Secure Boot?
`[Based on Debian's 4.19.146-1, we will enable all options related to secureboot and lockdown. It will also update the kernel periodically.]`

###### What changes were made since your SHIM was last signed?
`[This is the first time review]`

###### What is the hash of your final SHIM binary?
`[sha256sum 2ea85ba8684c51e6e420be2cda0bc1b74dc8de532de27d8410e2a8805b351527 shimx64.efi]`
