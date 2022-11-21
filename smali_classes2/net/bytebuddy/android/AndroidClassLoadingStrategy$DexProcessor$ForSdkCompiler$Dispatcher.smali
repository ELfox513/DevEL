.class public interface abstract Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForApi26LevelCompatibleVm;,
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler$Dispatcher$Unavailable;
    }
.end annotation


# virtual methods
.method public abstract setTargetApi(Lcom/android/dx/dex/DexOptions;I)V
.end method

.method public abstract translate(Lp1/f;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
.end method
