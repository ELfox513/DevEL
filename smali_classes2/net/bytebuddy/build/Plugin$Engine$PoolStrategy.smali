.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoolStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Eager;,
        Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy$Default;
    }
.end annotation


# virtual methods
.method public abstract typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;
.end method
