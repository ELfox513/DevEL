.class public interface abstract Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypeContainment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;
    }
.end annotation


# virtual methods
.method public abstract getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract isLocalType()Z
.end method

.method public abstract isSelfContained()Z
.end method
