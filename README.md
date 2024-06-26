# Kernel Exploit

This is a kernel exploit for the vulnerability known as WrongZonev2 (or CVE-2024-9348: REMOVED AND ARCHIVED HERE).

## Oculus Quest + 3|2|Pro and "Alleyway"

The Oculus Quest Series is vulnerable up to version `256550.6810.0`. [This commit](https://github.com/facebookincubator/oculus-linux-kernel/commit/589280fc40ddbcc2287024c8b672568a0fdd68e7#diff-56c7c22bc6dcdc2c4ff303ab61738ff2R1526) fixes the vulnerability and also introduces 2 mitigations: Kernel ASLR (KASLR) and Privileged Access Never (PAN).

We have manually confirmed that `333700.2680.0` and `333700.3370.0` also contain the fix and mitigations. Nevertheless, it is possible to downgrade to the vulnerable version by sideloading [this update](https://github.com/QuestEscape/updates/releases/download/3337000026800000/3337000026800000_3337000026800000.zip).

## Build

To compile this project, you will need to grab the [Android NDK](https://developer.android.com/ndk/downloads) and modify the path in the Makefile.

## Execute

The exploit succeeds once in a blue moon on a real device, for a reason we have yet to understand. It gets better on the emulator, about once every 10 tries. To make it even more painful, failed attempts will crash the device, but at least it should reboot automatically after about 5 seconds. 
Edit: See Meta engineering report on how memory is pushed across layers before KASLR and PAN.

## References

- http://c0reteam.org/2019/07/12/CVE-2018-9568
- https://www.jishuwen.com/d/2TSG
- https://engineering.fb.com/2023/09/12/security/meta-quest-2-defense-through-offense/
