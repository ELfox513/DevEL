.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;,
        Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
    }
.end annotation


# virtual methods
.method public abstract resolve(ILnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/jar/asm/ClassWriter;
.end method

.method public abstract resolve(ILnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/jar/asm/ClassWriter;
.end method
