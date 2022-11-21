.class public final Lr4/nz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ie1;


# instance fields
.field public a:Z

.field public b:Z

.field public final d:Ljava/lang/String;

.field public final k:Lr4/xt2;

.field public final p:Lb3/y1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/xt2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/nz1;->a:Z

    iput-boolean v0, p0, Lr4/nz1;->b:Z

    iput-object p1, p0, Lr4/nz1;->d:Ljava/lang/String;

    iput-object p2, p0, Lr4/nz1;->k:Lr4/xt2;

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/nl0;->p()Lb3/y1;

    move-result-object p1

    iput-object p1, p0, Lr4/nz1;->p:Lb3/y1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lr4/wt2;
    .locals 4

    iget-object v0, p0, Lr4/nz1;->p:Lb3/y1;

    invoke-interface {v0}, Lb3/y1;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/nz1;->d:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object p1

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tms"

    invoke-virtual {p1, v2, v1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    return-object p1
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/nz1;->k:Lr4/xt2;

    const-string v1, "adapter_init_finished"

    invoke-virtual {p0, v1}, Lr4/nz1;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string p1, "rqe"

    invoke-virtual {v1, p1, p2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/nz1;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/nz1;->k:Lr4/xt2;

    const-string v1, "init_finished"

    invoke-virtual {p0, v1}, Lr4/nz1;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/nz1;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/nz1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/nz1;->k:Lr4/xt2;

    const-string v1, "init_started"

    invoke-virtual {p0, v1}, Lr4/nz1;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/nz1;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/nz1;->k:Lr4/xt2;

    const-string v1, "adapter_init_started"

    invoke-virtual {p0, v1}, Lr4/nz1;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/nz1;->k:Lr4/xt2;

    const-string v1, "adapter_init_finished"

    invoke-virtual {p0, v1}, Lr4/nz1;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method
