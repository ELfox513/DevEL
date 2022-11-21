.class public interface abstract Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Illegal;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;
    }
.end annotation


# virtual methods
.method public abstract isResolved()Z
.end method

.method public abstract resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end method
