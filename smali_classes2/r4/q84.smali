.class public abstract Lr4/q84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lr4/q84<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/b94;

.field public final b:I

.field public final d:Ljava/lang/String;

.field public final k:I

.field public final p:Ljava/lang/Object;

.field public final q:Lr4/u84;

.field public r:Ljava/lang/Integer;

.field public s:Lr4/t84;

.field public t:Z

.field public u:Lr4/y74;

.field public v:Lr4/p84;

.field public final w:Lr4/d84;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lr4/u84;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lr4/b94;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lr4/b94;

    invoke-direct {v0}, Lr4/b94;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lr4/q84;->a:Lr4/b94;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/q84;->t:Z

    iput-object v1, p0, Lr4/q84;->u:Lr4/y74;

    iput p1, p0, Lr4/q84;->b:I

    iput-object p2, p0, Lr4/q84;->d:Ljava/lang/String;

    iput-object p3, p0, Lr4/q84;->q:Lr4/u84;

    new-instance p1, Lr4/d84;

    invoke-direct {p1}, Lr4/d84;-><init>()V

    iput-object p1, p0, Lr4/q84;->w:Lr4/d84;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    iput v0, p0, Lr4/q84;->k:I

    return-void
.end method

.method public static synthetic c(Lr4/q84;)Lr4/b94;
    .locals 0

    iget-object p0, p0, Lr4/q84;->a:Lr4/b94;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public C()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final D()I
    .locals 1

    iget-object v0, p0, Lr4/q84;->w:Lr4/d84;

    invoke-virtual {v0}, Lr4/d84;->a()I

    move-result v0

    return v0
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lr4/q84;->t:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final F()Z
    .locals 2

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/q84;->t:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract H(Lr4/l84;)Lr4/w84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/l84;",
            ")",
            "Lr4/w84<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract I(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final J(Lr4/z84;)V
    .locals 2

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/q84;->q:Lr4/u84;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lr4/u84;->a(Lr4/z84;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final K(Lr4/p84;)V
    .locals 1

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lr4/q84;->v:Lr4/p84;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final L(Lr4/w84;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/w84<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/q84;->v:Lr4/p84;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lr4/p84;->b(Lr4/q84;Lr4/w84;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lr4/q84;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/q84;->v:Lr4/p84;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lr4/p84;->a(Lr4/q84;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final N()Lr4/d84;
    .locals 1

    iget-object v0, p0, Lr4/q84;->w:Lr4/d84;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lr4/q84;

    iget-object v0, p0, Lr4/q84;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lr4/q84;->r:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/q84;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lr4/q84;->k:I

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lr4/b94;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/q84;->a:Lr4/b94;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lr4/b94;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lr4/q84;->s:Lr4/t84;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lr4/t84;->c(Lr4/q84;)V

    :cond_0
    sget-boolean v0, Lr4/b94;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lr4/o84;

    invoke-direct {v3, p0, p1, v0, v1}, Lr4/o84;-><init>(Lr4/q84;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lr4/q84;->a:Lr4/b94;

    invoke-virtual {v2, p1, v0, v1}, Lr4/b94;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lr4/q84;->a:Lr4/b94;

    invoke-virtual {p0}, Lr4/q84;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/b94;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lr4/q84;->s:Lr4/t84;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lr4/t84;->d(Lr4/q84;I)V

    :cond_0
    return-void
.end method

.method public final n(Lr4/t84;)Lr4/q84;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/t84;",
            ")",
            "Lr4/q84<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lr4/q84;->s:Lr4/t84;

    return-object p0
.end method

.method public final p(I)Lr4/q84;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lr4/q84<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lr4/q84;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lr4/q84;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lr4/q84;->A()Z

    iget-object v1, p0, Lr4/q84;->d:Ljava/lang/String;

    iget-object v2, p0, Lr4/q84;->r:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[ ] "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NORMAL "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/q84;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lr4/q84;->d:Ljava/lang/String;

    iget v1, p0, Lr4/q84;->b:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final x(Lr4/y74;)Lr4/q84;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/y74;",
            ")",
            "Lr4/q84<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lr4/q84;->u:Lr4/y74;

    return-object p0
.end method

.method public final z()Lr4/y74;
    .locals 1

    iget-object v0, p0, Lr4/q84;->u:Lr4/y74;

    return-object v0
.end method
