.class public final Lr4/gl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc4/f;

.field public final b:Lr4/rl0;

.field public final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lr4/fl0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Lc4/f;Lr4/rl0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/gl0;->g:J

    iput-wide v0, p0, Lr4/gl0;->h:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lr4/gl0;->i:J

    iput-wide v0, p0, Lr4/gl0;->j:J

    iput-wide v0, p0, Lr4/gl0;->k:J

    iput-object p1, p0, Lr4/gl0;->a:Lc4/f;

    iput-object p2, p0, Lr4/gl0;->b:Lr4/rl0;

    iput-object p3, p0, Lr4/gl0;->e:Ljava/lang/String;

    iput-object p4, p0, Lr4/gl0;->f:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lr4/gl0;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public static synthetic a(Lr4/gl0;)Lc4/f;
    .locals 0

    iget-object p0, p0, Lr4/gl0;->a:Lc4/f;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/tt;)V
    .locals 4

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/gl0;->a:Lc4/f;

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lr4/gl0;->j:J

    iget-object v3, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v3, p1, v1, v2}, Lr4/rl0;->e(Lr4/tt;J)V

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

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1}, Lr4/rl0;->f()V

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

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1}, Lr4/rl0;->g()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(J)V
    .locals 4

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lr4/gl0;->k:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    iget-object p1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {p1, p0}, Lr4/rl0;->a(Lr4/gl0;)V

    :cond_0
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
    .locals 6

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lr4/gl0;->k:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lr4/gl0;->g:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lr4/gl0;->a:Lc4/f;

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lr4/gl0;->g:J

    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1, p0}, Lr4/rl0;->a(Lr4/gl0;)V

    :cond_0
    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1}, Lr4/rl0;->d()V

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
    .locals 6

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lr4/gl0;->k:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    new-instance v1, Lr4/fl0;

    invoke-direct {v1, p0}, Lr4/fl0;-><init>(Lr4/gl0;)V

    invoke-virtual {v1}, Lr4/fl0;->c()V

    iget-object v2, p0, Lr4/gl0;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lr4/gl0;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lr4/gl0;->i:J

    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1}, Lr4/rl0;->c()V

    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1, p0}, Lr4/rl0;->a(Lr4/gl0;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lr4/gl0;->k:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lr4/gl0;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/gl0;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/fl0;

    invoke-virtual {v1}, Lr4/fl0;->a()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lr4/fl0;->b()V

    iget-object v1, p0, Lr4/gl0;->b:Lr4/rl0;

    invoke-virtual {v1, p0}, Lr4/rl0;->a(Lr4/gl0;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i(Z)V
    .locals 5

    iget-object p1, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-wide v0, p0, Lr4/gl0;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lr4/gl0;->a:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/gl0;->h:J

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lr4/gl0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lr4/gl0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lr4/gl0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lr4/gl0;->j:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lr4/gl0;->k:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lr4/gl0;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lr4/gl0;->h:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lr4/gl0;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lr4/gl0;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/fl0;

    invoke-virtual {v4}, Lr4/fl0;->d()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/gl0;->e:Ljava/lang/String;

    return-object v0
.end method
