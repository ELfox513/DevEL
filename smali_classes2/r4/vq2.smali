.class public final Lr4/vq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/uq2;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lr4/er2;",
            "Lr4/tq2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/br2;

.field public final c:Lr4/xq2;


# direct methods
.method public constructor <init>(Lr4/br2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lr4/br2;->q:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lr4/vq2;->b:Lr4/br2;

    new-instance p1, Lr4/xq2;

    invoke-direct {p1}, Lr4/xq2;-><init>()V

    iput-object p1, p0, Lr4/vq2;->c:Lr4/xq2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/tt;Ljava/lang/String;Lr4/eu;)Lr4/er2;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lr4/sg0;

    iget-object v1, p0, Lr4/vq2;->b:Lr4/br2;

    iget-object v1, v1, Lr4/br2;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr4/sg0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr4/sg0;->a()Lr4/tg0;

    move-result-object v0

    iget v4, v0, Lr4/tg0;->k:I

    new-instance v0, Lr4/fr2;

    iget-object v1, p0, Lr4/vq2;->b:Lr4/br2;

    iget-object v5, v1, Lr4/br2;->s:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lr4/fr2;-><init>(Lr4/tt;Ljava/lang/String;ILjava/lang/String;Lr4/eu;)V

    return-object v0
.end method

.method public final declared-synchronized b(Lr4/er2;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/tq2;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lr4/tq2;->c()I

    move-result p1

    iget-object v1, p0, Lr4/vq2;->b:Lr4/br2;

    iget v1, v1, Lr4/br2;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Lr4/br2;
    .locals 1

    iget-object v0, p0, Lr4/vq2;->b:Lr4/br2;

    return-object v0
.end method

.method public final declared-synchronized d(Lr4/er2;Lr4/dr2;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/er2;",
            "Lr4/dr2<",
            "**>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/tq2;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v1

    iput-wide v1, p2, Lr4/dr2;->d:J

    const/4 v1, 0x2

    if-nez v0, :cond_c

    new-instance v0, Lr4/tq2;

    iget-object v2, p0, Lr4/vq2;->b:Lr4/br2;

    iget v3, v2, Lr4/br2;->q:I

    iget v2, v2, Lr4/br2;->r:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v3, v2}, Lr4/tq2;-><init>(II)V

    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lr4/vq2;->b:Lr4/br2;

    iget v4, v3, Lr4/br2;->p:I

    if-ne v2, v4, :cond_b

    iget v2, v3, Lr4/br2;->x:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/tq2;

    invoke-virtual {v6}, Lr4/tq2;->f()I

    move-result v6

    if-ge v6, v3, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/tq2;

    invoke-virtual {v3}, Lr4/tq2;->f()I

    move-result v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/er2;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_9

    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/tq2;

    invoke-virtual {v7}, Lr4/tq2;->e()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/tq2;

    invoke-virtual {v4}, Lr4/tq2;->e()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/er2;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/tq2;

    invoke-virtual {v7}, Lr4/tq2;->d()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/tq2;

    invoke-virtual {v4}, Lr4/tq2;->d()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/er2;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    iget-object v2, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {v2}, Lr4/xq2;->d()V

    goto :goto_4

    :cond_a
    throw v4

    :cond_b
    :goto_4
    iget-object v2, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {p1}, Lr4/xq2;->c()V

    :cond_c
    invoke-virtual {v0, p2}, Lr4/tq2;->a(Lr4/dr2;)Z

    move-result p1

    iget-object v2, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {v2}, Lr4/xq2;->e()V

    iget-object v2, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {v2}, Lr4/xq2;->f()Lr4/wq2;

    move-result-object v2

    invoke-virtual {v0}, Lr4/tq2;->h()Lr4/rr2;

    move-result-object v0

    invoke-static {}, Lr4/bq;->C()Lr4/vp;

    move-result-object v3

    invoke-static {}, Lr4/up;->C()Lr4/tp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/tp;->A(I)Lr4/tp;

    invoke-static {}, Lr4/aq;->C()Lr4/zp;

    move-result-object v1

    iget-boolean v5, v2, Lr4/wq2;->a:Z

    invoke-virtual {v1, v5}, Lr4/zp;->v(Z)Lr4/zp;

    iget-boolean v2, v2, Lr4/wq2;->b:Z

    invoke-virtual {v1, v2}, Lr4/zp;->x(Z)Lr4/zp;

    iget v0, v0, Lr4/rr2;->b:I

    invoke-virtual {v1, v0}, Lr4/zp;->z(I)Lr4/zp;

    invoke-virtual {v4, v1}, Lr4/tp;->z(Lr4/zp;)Lr4/tp;

    invoke-virtual {v3, v4}, Lr4/vp;->v(Lr4/tp;)Lr4/vp;

    invoke-virtual {v3}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/bq;

    iget-object p2, p2, Lr4/dr2;->a:Lr4/r61;

    invoke-interface {p2}, Lr4/r61;->r()Lr4/m41;

    move-result-object p2

    invoke-virtual {p2}, Lr4/m41;->e()Lr4/tc1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr4/tc1;->A(Lr4/bq;)V

    invoke-virtual {p0}, Lr4/vq2;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized e(Lr4/er2;)Lr4/dr2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/er2;",
            ")",
            "Lr4/dr2<",
            "**>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/tq2;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lr4/tq2;->b()Lr4/dr2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {v1}, Lr4/xq2;->b()V

    :cond_0
    invoke-virtual {p1}, Lr4/tq2;->h()Lr4/rr2;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/bq;->C()Lr4/vp;

    move-result-object v1

    invoke-static {}, Lr4/up;->C()Lr4/tp;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lr4/tp;->A(I)Lr4/tp;

    invoke-static {}, Lr4/yp;->C()Lr4/xp;

    move-result-object v3

    iget-boolean v4, p1, Lr4/rr2;->a:Z

    invoke-virtual {v3, v4}, Lr4/xp;->v(Z)Lr4/xp;

    iget p1, p1, Lr4/rr2;->b:I

    invoke-virtual {v3, p1}, Lr4/xp;->x(I)Lr4/xp;

    invoke-virtual {v2, v3}, Lr4/tp;->x(Lr4/xp;)Lr4/tp;

    invoke-virtual {v1, v2}, Lr4/vp;->v(Lr4/tp;)Lr4/vp;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/bq;

    iget-object v1, v0, Lr4/dr2;->a:Lr4/r61;

    invoke-interface {v1}, Lr4/r61;->r()Lr4/m41;

    move-result-object v1

    invoke-virtual {v1}, Lr4/m41;->e()Lr4/tc1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/tc1;->v(Lr4/bq;)V

    :cond_1
    invoke-virtual {p0}, Lr4/vq2;->f()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {p1}, Lr4/xq2;->a()V

    invoke-virtual {p0}, Lr4/vq2;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 7

    sget-object v0, Lr4/br2;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Lr4/rz;->G4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr4/vq2;->b:Lr4/br2;

    iget-object v1, v1, Lr4/br2;->k:Lr4/yq2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/vq2;->c:Lr4/xq2;

    invoke-virtual {v1}, Lr4/xq2;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/vq2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/er2;

    invoke-interface {v5}, Lr4/er2;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/tq2;

    invoke-virtual {v6}, Lr4/tq2;->c()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/tq2;

    invoke-virtual {v5}, Lr4/tq2;->c()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lr4/vq2;->b:Lr4/br2;

    iget v6, v6, Lr4/br2;->q:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/tq2;

    invoke-virtual {v4}, Lr4/tq2;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_3
    iget-object v1, p0, Lr4/vq2;->b:Lr4/br2;

    iget v1, v1, Lr4/br2;->p:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
