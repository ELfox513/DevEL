.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;,
        Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;,
        Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;
    }
.end annotation


# virtual methods
.method public abstract expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end method

.method public abstract isDefined()Z
.end method

.method public abstract wrap(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.end method
