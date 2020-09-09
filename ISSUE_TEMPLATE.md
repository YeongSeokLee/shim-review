Make sure you have provided the following information:

 - [x] link to your code branch cloned from rhboot/shim-review in the form user/repo@tag
 - [x] completed README.md file with the necessary information
 - [x] shim.efi to be signed
 - [x] public portion of your certificate embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [ ] binaries, for which hashes are added do vendor_db ( if you use vendor_db and have hashes whitelisted )
 - [x] any extra patches to shim via your own git tree or as files
 - [x] any extra patches to grub via your own git tree or as files
 - [x] build logs


###### What organization or people are asking to have this signed:
`[TmaxOS]`

###### What product or service is this for:
`[TmaxOS]`

###### What is the origin and full version number of your shim?
`[shim 15+1533136590.3beb971-7+deb10u1]`

###### What's the justification that this really does need to be signed for the whole world to be able to boot it:
`[We hope TmaxOS will support Secure Boot]`

###### How do you manage and protect the keys used in your SHIM?
`[Key Administrator can only access]`

###### Do you use EV certificates as embedded certificates in the SHIM?
`[No]`

###### If you use new vendor_db functionality, are any hashes whitelisted, and if yes: for what binaries ?
`[your text here]`

###### Is kernel upstream commit 75b0cea7bf307f362057cc778efe89af4c615354 present in your kernel, if you boot chain includes a linux kernel ?
`[your text here]`

###### if SHIM is loading grub2 bootloader, is CVE CVE-2020-10713 fixed ?
`[your text here]`

##### Did you change your certificate strategy, so that affected by CVE CVE-2020-10713 grub2 bootloaders can not be verified ?
`[your text here]`

###### What is the origin and full version number of your bootloader (GRUB or other)?
`[grub2 2.02+dfsg1-20+deb10u2+tmaxos1]`

###### If your SHIM launches any other components, please provide further details on what is launched
`[None]`

###### How do the launched components prevent execution of unauthenticated code?
`[Grub only execute the kernel verified with shim]`

###### Does your SHIM load any loaders that support loading unsigned kernels (e.g. GRUB)?
`[No]`

###### What kernel are you using? Which patches does it includes to enforce Secure Boot?
`[Linux 4.19 included Lockdown patches]`

###### What changes were made since your SHIM was last signed?
`[This is the first time review]`

###### What is the hash of your final SHIM binary?
`[sha256sum faf0b211f90cac3dec790261912cde70335cbfa1c90410228cc13141684615fb shimx64.efi]`
