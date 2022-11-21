.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedConstructor;,
        Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod;,
        Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$Preserved;
    }
.end annotation


# virtual methods
.method public abstract getAppendedParameters()Lnet/bytebuddy/description/type/TypeList;
.end method

.method public abstract getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.end method

.method public abstract isRebased()Z
.end method
