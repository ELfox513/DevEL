.class public Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$CacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingSoftReference"
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/SoftReference<",
            "Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V

    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/pool/TypePool$CacheProvider;

    if-nez v0, :cond_0

    sget-object p1, Lnet/bytebuddy/pool/TypePool$CacheProvider;->UNRESOLVED:Lnet/bytebuddy/pool/TypePool$Resolution;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    if-nez v1, :cond_1

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v0, v3}, Lv3/g1;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple$UsingSoftReference;->delegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_1
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    return-object p1
.end method
