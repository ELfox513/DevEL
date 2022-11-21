.class public final Lr4/d92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ga1;
.implements Lr4/y81;
.implements Lr4/m71;
.implements Lr4/d81;
.implements Lr4/gt;
.implements Lr4/j71;
.implements Lr4/w91;
.implements Lr4/qc;
.implements Lr4/z71;
.implements Lr4/cf1;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/iv;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/cw;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/ex;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/lv;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/kw;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Lr4/xt2;

.field public final u:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/xt2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/d92;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/d92;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/d92;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/d92;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/d92;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/d92;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Lr4/rz;->m6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lr4/d92;->u:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lr4/d92;->t:Lr4/xt2;

    return-void
.end method


# virtual methods
.method public final A(Lr4/ex;)V
    .locals 1

    iget-object v0, p0, Lr4/d92;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final A0(Lr4/bp2;)V
    .locals 1

    iget-object p1, p0, Lr4/d92;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lr4/d92;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final B(Lr4/lt;)V
    .locals 2

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/v82;

    invoke-direct {v1, p1}, Lr4/v82;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/w82;

    invoke-direct {v1, p1}, Lr4/w82;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/x82;

    invoke-direct {v1, p1}, Lr4/x82;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object p1, p0, Lr4/d92;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lr4/d92;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final F0()V
    .locals 2

    sget-object v0, Lr4/rz;->b7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/l82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    :cond_0
    return-void
.end method

.method public final L(Lr4/lv;)V
    .locals 1

    iget-object v0, p0, Lr4/d92;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final N(Lr4/kw;)V
    .locals 1

    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lr4/d92;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/d92;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr4/d92;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Lr4/d92;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lr4/s82;

    invoke-direct {v3, v1}, Lr4/s82;-><init>(Landroid/util/Pair;)V

    invoke-static {v2, v3}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/d92;->u:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lr4/d92;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a()V
    .locals 2

    sget-object v0, Lr4/rz;->b7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/m82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    :cond_0
    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/n82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final declared-synchronized c()Lr4/iv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/iv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c0(Lr4/og0;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/z82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/a92;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lr4/d92;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/b92;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/c92;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/k82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/o82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/y82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/j82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lr4/t82;->a:Lr4/nl2;

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final o(Lr4/lt;)V
    .locals 2

    iget-object v0, p0, Lr4/d92;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/r82;

    invoke-direct {v1, p1}, Lr4/r82;-><init>(Lr4/lt;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final declared-synchronized p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/d92;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/d92;->u:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The queue for app events is full, dropping the new event."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d92;->t:Lr4/xt2;

    if-eqz v0, :cond_0

    const-string v1, "dae_action"

    invoke-static {v1}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "dae_name"

    invoke-virtual {v1, v2, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string p1, "dae_data"

    invoke-virtual {v1, p1, p2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lr4/d92;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/q82;

    invoke-direct {v1, p1, p2}, Lr4/q82;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized s()Lr4/cw;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/d92;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/cw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u(Lr4/au;)V
    .locals 2

    iget-object v0, p0, Lr4/d92;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lr4/p82;

    invoke-direct {v1, p1}, Lr4/p82;-><init>(Lr4/au;)V

    invoke-static {v0, v1}, Lr4/ol2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lr4/nl2;)V

    return-void
.end method

.method public final v(Lr4/iv;)V
    .locals 1

    iget-object v0, p0, Lr4/d92;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Lr4/cw;)V
    .locals 1

    iget-object v0, p0, Lr4/d92;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/d92;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lr4/d92;->Q()V

    return-void
.end method
