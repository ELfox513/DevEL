.class public interface abstract Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;,
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Lazy;,
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;,
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;,
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    }
.end annotation


# virtual methods
.method public abstract resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
.end method
