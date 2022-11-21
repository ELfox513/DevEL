.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Configurable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/ClassLoader;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract allowExistingTypes()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract opened()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract with(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract with(Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Configurable<",
            "TS;>;"
        }
    .end annotation
.end method
