.class public interface abstract Lnet/bytebuddy/pool/TypePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Explicit;,
        Lnet/bytebuddy/pool/TypePool$ClassLoading;,
        Lnet/bytebuddy/pool/TypePool$LazyFacade;,
        Lnet/bytebuddy/pool/TypePool$Default;,
        Lnet/bytebuddy/pool/TypePool$AbstractBase;,
        Lnet/bytebuddy/pool/TypePool$Empty;,
        Lnet/bytebuddy/pool/TypePool$CacheProvider;,
        Lnet/bytebuddy/pool/TypePool$Resolution;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
.end method
