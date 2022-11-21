.class public interface abstract Lnet/bytebuddy/build/Plugin$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;,
        Lnet/bytebuddy/build/Plugin$Factory$Simple;
    }
.end annotation


# virtual methods
.method public abstract make()Lnet/bytebuddy/build/Plugin;
.end method
