.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;,
        Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForFile;,
        Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForByteArray;
    }
.end annotation


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract resolveAs(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
