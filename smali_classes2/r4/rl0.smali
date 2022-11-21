.class public final Lr4/rl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gn;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lb3/y1;

.field public final c:Lr4/pl0;

.field public final d:Lr4/ol0;

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr4/gl0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr4/ql0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb3/y1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/rl0;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/rl0;->f:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/rl0;->g:Z

    new-instance v0, Lr4/ol0;

    invoke-direct {v0, p1, p2}, Lr4/ol0;-><init>(Ljava/lang/String;Lb3/y1;)V

    iput-object v0, p0, Lr4/rl0;->d:Lr4/ol0;

    iput-object p2, p0, Lr4/rl0;->b:Lb3/y1;

    new-instance p1, Lr4/pl0;

    invoke-direct {p1}, Lr4/pl0;-><init>()V

    iput-object p1, p0, Lr4/rl0;->c:Lr4/pl0;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 4

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/rl0;->b:Lb3/y1;

    invoke-interface {p1}, Lb3/y1;->w()J

    move-result-wide v2

    sget-object p1, Lr4/rz;->E0:Lr4/jz;

    sub-long/2addr v0, v2

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lr4/rl0;->d:Lr4/ol0;

    const/4 v0, -0x1

    iput v0, p1, Lr4/ol0;->d:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/rl0;->d:Lr4/ol0;

    iget-object v0, p0, Lr4/rl0;->b:Lb3/y1;

    invoke-interface {v0}, Lb3/y1;->n()I

    move-result v0

    iput v0, p1, Lr4/ol0;->d:I

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/rl0;->g:Z

    return-void

    :cond_1
    iget-object p1, p0, Lr4/rl0;->b:Lb3/y1;

    invoke-interface {p1, v0, v1}, Lb3/y1;->X0(J)V

    iget-object p1, p0, Lr4/rl0;->b:Lb3/y1;

    iget-object v0, p0, Lr4/rl0;->d:Lr4/ol0;

    iget v0, v0, Lr4/ol0;->d:I

    invoke-interface {p1, v0}, Lb3/y1;->d0(I)V

    return-void
.end method

.method public final a(Lr4/gl0;)V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->e:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lr4/gl0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->e:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->d:Lr4/ol0;

    invoke-virtual {v1}, Lr4/ol0;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->d:Lr4/ol0;

    invoke-virtual {v1}, Lr4/ol0;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Lr4/tt;J)V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->d:Lr4/ol0;

    invoke-virtual {v1, p1, p2, p3}, Lr4/ol0;->c(Lr4/tt;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->d:Lr4/ol0;

    invoke-virtual {v1}, Lr4/ol0;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/rl0;->d:Lr4/ol0;

    invoke-virtual {v1}, Lr4/ol0;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Lc4/f;Ljava/lang/String;)Lr4/gl0;
    .locals 2

    new-instance v0, Lr4/gl0;

    iget-object v1, p0, Lr4/rl0;->c:Lr4/pl0;

    invoke-virtual {v1}, Lr4/pl0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lr4/gl0;-><init>(Lc4/f;Lr4/rl0;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lr4/rl0;->g:Z

    return v0
.end method

.method public final j(Landroid/content/Context;Lr4/iq2;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lr4/rl0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lr4/rl0;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lr4/rl0;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    iget-object v3, p0, Lr4/rl0;->d:Lr4/ol0;

    iget-object v4, p0, Lr4/rl0;->c:Lr4/pl0;

    invoke-virtual {v4}, Lr4/pl0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lr4/ol0;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lr4/rl0;->f:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "slots"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gl0;

    invoke-virtual {v3}, Lr4/gl0;->j()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "ads"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lr4/iq2;->a(Ljava/util/HashSet;)V

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ql0;

    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
