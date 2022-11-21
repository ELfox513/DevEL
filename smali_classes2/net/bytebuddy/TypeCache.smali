.class public Lnet/bytebuddy/TypeCache;
.super Ljava/lang/ref/ReferenceQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/TypeCache$SimpleKey;,
        Lnet/bytebuddy/TypeCache$WithInlineExpunction;,
        Lnet/bytebuddy/TypeCache$StorageKey;,
        Lnet/bytebuddy/TypeCache$LookupKey;,
        Lnet/bytebuddy/TypeCache$Sort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/ReferenceQueue<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field public final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/TypeCache$StorageKey;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final sort:Lnet/bytebuddy/TypeCache$Sort;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/TypeCache$Sort;->STRONG:Lnet/bytebuddy/TypeCache$Sort;

    invoke-direct {p0, v0}, Lnet/bytebuddy/TypeCache;-><init>(Lnet/bytebuddy/TypeCache$Sort;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/TypeCache$Sort;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/TypeCache;->sort:Lnet/bytebuddy/TypeCache$Sort;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public expungeStaleEntries()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Cross-comparison is intended."
        value = {
            "GC_UNRELATED_TYPES"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/TypeCache$LookupKey;

    invoke-direct {v1, p1}, Lnet/bytebuddy/TypeCache$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    if-nez p1, :cond_0

    sget-object p1, Lnet/bytebuddy/TypeCache;->NOT_FOUND:Ljava/lang/Class;

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lnet/bytebuddy/TypeCache;->NOT_FOUND:Ljava/lang/Class;

    return-object p1

    :cond_1
    instance-of p2, p1, Ljava/lang/ref/Reference;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_2
    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Could not create type"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;

    move-result-object p1

    monitor-exit p4

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TT;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Cross-comparison is intended."
        value = {
            "GC_UNRELATED_TYPES"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/TypeCache$LookupKey;

    invoke-direct {v1, p1}, Lnet/bytebuddy/TypeCache$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/TypeCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lnet/bytebuddy/TypeCache$StorageKey;

    invoke-direct {v2, p1, p0}, Lnet/bytebuddy/TypeCache$StorageKey;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/TypeCache;->sort:Lnet/bytebuddy/TypeCache$Sort;

    invoke-virtual {p1, p3}, Lnet/bytebuddy/TypeCache$Sort;->wrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    instance-of v2, v1, Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    return-object p3
.end method
