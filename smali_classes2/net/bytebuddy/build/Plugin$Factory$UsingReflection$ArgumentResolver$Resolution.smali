.class public interface abstract Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;
    }
.end annotation


# virtual methods
.method public abstract getArgument()Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract isResolved()Z
.end method
