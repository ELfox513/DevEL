.class public Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final cacheProviders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;-><init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;-><init>(Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getBootstrapMarkerLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .locals 2
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->getBootstrapMarkerLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->withObjectType()Lnet/bytebuddy/pool/TypePool$CacheProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache$Simple;->cacheProviders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method
