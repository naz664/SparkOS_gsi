# Project Spark

### To get started with building SparkOS GSI,
you'll need to get familiar with [Git and Repo](https://source.android.com/source/using-repo.html) as well as [How to build a GSI](https://github.com/phhusson/treble_experimentations/wiki/How-to-build-a-GSI%3F).


### Create the directories

As a first step, you'll have to create and enter a folder with the appropriate name.
To do that, run these commands:

```bash
   mkdir spark
   cd spark
```

### To initialize your local repository, run this command:

```bash
   repo init -u https://github.com/Spark-Rom/manifest -b pyro-next
```
 

### Clone the Manifest to add necessary dependencies for gsi:
 
    git clone https://github.com/naz664/treble_manifest.git .repo/local_manifests  -b 13
  


### Afterwards, sync the source by running this command:

```bash
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
```


### After syncing, apply the patches:

Copy the patches folder to rom folder and in rom folder

```
   bash patches/apply-patches.sh .
```

## Generating Rom Makefile

 In rom folder,
 
 ```
    cd device/phh/treble
    bash generate.sh spark
 ```

### Turn on caching to speed up build

You can speed up subsequent builds by adding these lines to your ~/.bashrc OR ~/.zshrc file:

```
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_MAXSIZE=50G # 50 GB
``` 

## Compilation 

In rom folder,

 ```
 . build/envsetup.sh
 ccache -M 50G -F 0
 lunch treble_arm64_bgN-userdebug 
 make systemimage -j$(nproc --all)
 ```


## Compress

After compilation,
If you want to compress the build.
In rom folder,

   ```
        cd out/target/product/tdgsi_arm64_ab
        xz -z -k system.img 
   ```


## Troubleshoot
 
If you face any conflicts while applying patches, apply the patch manually.



## Credits
These people have helped this project in some way or another, so they should be the ones who receive all the credit:
- [SparkOS](https://github.com/Spark-Rom)
- [Phhusson](https://github.com/phhusson)
- [AndyYan](https://github.com/AndyCGYan)
- [Ponces](https://github.com/ponces)
- [Peter Cai](https://github.com/PeterCxy)
- [Iceows](https://github.com/Iceows)
- [ChonDoit](https://github.com/ChonDoit)


