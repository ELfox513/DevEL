.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;
    }
.end annotation


# virtual methods
.method public abstract isResolved()Z
.end method

.method public abstract resolve()[B
.end method
