.class public Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;
    }
.end annotation


# instance fields
.field private final storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Resolution;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->storage:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static withObjectType()Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .locals 4

    new-instance v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v2, v3}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Resolution;

    return-object p1
.end method

.method public getStorage()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Resolution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->storage:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Resolution;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method
