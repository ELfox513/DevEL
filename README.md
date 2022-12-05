# DevEL v1.8.7

DevEL is a unofficial patch for [Infinitode 2](https://infinitode.prineside.com/) v.1.8.7 (build 184) Android version that gives you access to modding mode and adapt it for Android

## TODO feauters

* ~~Move internal path to external path~~
* ~~Lock normal mode~~
* ~~Move local path to external path~~
* ~~Remove logging of some ad loading errors~~

*These features below will be implemented depending on how many people will use this patch*
* ~~MultiCPU~~
* ~~Logs on external path~~ (only exceptions.log)
* ~~Remove spash screen with brand logo~~
* Remove ugly consent form
* Slightly modified loading screen
* Additional screen if the patch is launched without resources

## How to use

You can use the modding mode just like on PC according to the [game's official modding guide](https://infinitode.prineside.com/modding/?p=index). However, you need to consider some important differences:
1. Game resources are on the <code>*/Android/data/com.prineside.tdi2.devel/files/</code> path, not inside the apk. This also applies for local data
2. Normal mode is blocked. Even if the file <code>mod_id.txt</code> is missing, the game starts in modding mode with <code>DevEL</code> mod id

## How to install

1. [Build](#how-to-build) or [download](https://github.com/ELfox513/DevEL-v1.8.7/releases) patched APK and install it
2. Create the <code>com.prineside.tdi2.devel</code> folder on <code>*/Android/data/</code>. Inside this folder create the folder <code>files</code>
3. Copy to the <code>files</code> folder all the contents of the <code>assets</code> folder from the original apk file. **Required the apk of the original version v1.8.7 (build 184). Using resources from other versions does not guarantee stable**
4. Done

## How to build

### Using [APKLab](https://marketplace.visualstudio.com/items?itemName=Surendrajat.apklab) in [Visual Studio Code](https://code.visualstudio.com/) (recommended)

1. Right click on the <code>apktool.yml</code> file -> <code>APKLab: Rebuild the APK</code>
2. Done. Your apk file in <code>dist</code> folder

### Using [Apktool](https://ibotpeaches.github.io/Apktool/) (2.7.0) and [Uber Apk Signer](https://github.com/patrickfav/uber-apk-signer) (1.2.1)

**This guide is for Windows. In other OS, the steps of the instruction may differ**
1. Command for console: <code>java -jar C:\Your\Path\To\apktool_2.7.0.jar b c:\Your\Path\To\Clonned\DevEL-v1.8.7 --use-aapt2</code>
<<<<<<< HEAD
2. Command for console: <code>java -jar C:\Your\Path\To\uber-apk-signer-1.2.1.jar -a "c:\Your\Path\To\Clonned\DevEL-v1.8.7\dist\Infinitode 2 DevEL-v1.8.7-04.apk" --allowResign --overwrite</code>
=======
2. Command for console: <code>java -jar C:\Your\Path\To\uber-apk-signer-1.2.1.jar -a "c:\Your\Path\To\Clonned\DevEL-v1.8.7\dist\Infinitode 2 DevEL-v1.8.7-02.apk" --allowResign --overwrite</code>
>>>>>>> 061b19673e2249ce33db9f376ba0685ea570ca8b
3. Done. Your apk file in <code>dist</code> folder
