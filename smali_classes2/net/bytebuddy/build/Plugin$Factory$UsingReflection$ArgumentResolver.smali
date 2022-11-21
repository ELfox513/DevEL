.class public interface abstract Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArgumentResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$NoOp;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
    }
.end annotation


# virtual methods
.method public abstract resolve(ILjava/lang/Class;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;"
        }
    .end annotation
.end method
