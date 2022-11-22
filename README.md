# DevEL-v1.8.7

DevEL is a unofficial patch for [Infinitode 2](https://infinitode.prineside.com/) v.1.8.7 (build 1184) Android version that gives you access to modding mode and adapt it for Android

## TODO feauters

* ~~Move internal path to external path~~
* ~~Lock normal mode~~
* Move local path to external path
* Remove the output of some ad loading errors

*These features will be implemented depending on how many people will use this patch*
* In-game FAQ and DevEL news
* Additional screen if the patch is launched without resources
* StateEditor
* CameraTools
* Slightly modified loading screen
* MultiCPU

## How to use

You can use the modding mode just like on PC according to the [game's official modding guide](https://infinitode.prineside.com/modding/?p=index). However, you need to consider some important differences:
1. Game resources are on the <code>*/Android/data/com.prineside.tdi2.devel/files/</code> path, not inside the apk. This also applies for local data
2. Normal mode is blocked. Even if the file <code>mod_id.txt</code> is missing, the game starts in modding mode with <code>DevEL</code> mod id

## How to install

1. [Build](#how-to-build) or [download](https://github.com/ELfox513/DevEL-v1.8.7/releases) patched APK and install it
2. Create the <code>com.prineside.tdi2.devel</code> folder on <code>*/Android/data/</code>. Inside this folder create the folder <code>files</code>
3. Copy to the "files" folder all the contents of the "assets" folder from the original apk file. **Required the apk of the original version v1.8.7 (build 1187). Using resources from other versions does not guarantee stable**
4. Done

## How to build

### Using [APKLab](https://marketplace.visualstudio.com/items?itemName=Surendrajat.apklab) in [Visual Studio Code](https://code.visualstudio.com/) (recommended)

  // TODO

### Using [Apktool](https://ibotpeaches.github.io/Apktool/) and [Uber Apk Signer](https://github.com/patrickfav/uber-apk-signer)

  // TODO
