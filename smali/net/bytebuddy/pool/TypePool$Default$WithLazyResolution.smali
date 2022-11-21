.class public Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;
.super Lnet/bytebuddy/pool/TypePool$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithLazyResolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    return-void
.end method

.method public static synthetic b(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default;->doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 0
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    sget-object v2, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, v1, p0, v2}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    return-object v0
.end method

.method public static ofBootLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofBootLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofPlatformLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofPlatformLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofSystemLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofSystemLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doCache(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 0

    return-object p2
.end method

.method public doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;-><init>(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)V

    return-object v0
.end method

.method public doResolve(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-static {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->b(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    :cond_0
    return-object v0
.end method
