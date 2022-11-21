.class public final Lr4/zi1;
.super Lr4/i31;
.source "SourceFile"


# instance fields
.field public final A:Landroid/content/Context;

.field public final B:Lr4/bj1;

.field public final C:Lr4/g92;

.field public final D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/om;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Lr4/pm;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lr4/ej1;

.field public final k:Lr4/mj1;

.field public final l:Lr4/ek1;

.field public final m:Lr4/jj1;

.field public final n:Lr4/pj1;

.field public final o:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/jn1;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/hn1;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/on1;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/fn1;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/mn1;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lr4/al1;

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Lr4/pj0;

.field public final y:Lr4/u;

.field public final z:Lr4/im0;


# direct methods
.method public constructor <init>(Lr4/h31;Ljava/util/concurrent/Executor;Lr4/ej1;Lr4/mj1;Lr4/ek1;Lr4/jj1;Lr4/pj1;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/pj0;Lr4/u;Lr4/im0;Landroid/content/Context;Lr4/bj1;Lr4/g92;Lr4/pm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h31;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/ej1;",
            "Lr4/mj1;",
            "Lr4/ek1;",
            "Lr4/jj1;",
            "Lr4/pj1;",
            "Lr4/or3<",
            "Lr4/jn1;",
            ">;",
            "Lr4/or3<",
            "Lr4/hn1;",
            ">;",
            "Lr4/or3<",
            "Lr4/on1;",
            ">;",
            "Lr4/or3<",
            "Lr4/fn1;",
            ">;",
            "Lr4/or3<",
            "Lr4/mn1;",
            ">;",
            "Lr4/pj0;",
            "Lr4/u;",
            "Lr4/im0;",
            "Landroid/content/Context;",
            "Lr4/bj1;",
            "Lr4/g92;",
            "Lr4/pm;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Lr4/i31;-><init>(Lr4/h31;)V

    move-object v1, p2

    iput-object v1, v0, Lr4/zi1;->i:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lr4/zi1;->j:Lr4/ej1;

    move-object v1, p4

    iput-object v1, v0, Lr4/zi1;->k:Lr4/mj1;

    move-object v1, p5

    iput-object v1, v0, Lr4/zi1;->l:Lr4/ek1;

    move-object v1, p6

    iput-object v1, v0, Lr4/zi1;->m:Lr4/jj1;

    move-object v1, p7

    iput-object v1, v0, Lr4/zi1;->n:Lr4/pj1;

    move-object v1, p8

    iput-object v1, v0, Lr4/zi1;->o:Lr4/or3;

    move-object v1, p9

    iput-object v1, v0, Lr4/zi1;->p:Lr4/or3;

    move-object v1, p10

    iput-object v1, v0, Lr4/zi1;->q:Lr4/or3;

    move-object v1, p11

    iput-object v1, v0, Lr4/zi1;->r:Lr4/or3;

    move-object v1, p12

    iput-object v1, v0, Lr4/zi1;->s:Lr4/or3;

    move-object v1, p13

    iput-object v1, v0, Lr4/zi1;->x:Lr4/pj0;

    move-object/from16 v1, p14

    iput-object v1, v0, Lr4/zi1;->y:Lr4/u;

    move-object/from16 v1, p15

    iput-object v1, v0, Lr4/zi1;->z:Lr4/im0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lr4/zi1;->A:Landroid/content/Context;

    move-object/from16 v1, p17

    iput-object v1, v0, Lr4/zi1;->B:Lr4/bj1;

    move-object/from16 v1, p18

    iput-object v1, v0, Lr4/zi1;->C:Lr4/g92;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lr4/zi1;->D:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lr4/zi1;->E:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lr4/zi1;->F:Lr4/pm;

    return-void
.end method

.method public static i(Landroid/view/View;)Z
    .locals 8

    sget-object v0, Lr4/rz;->S6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p0}, Lb3/k2;->a(Landroid/view/View;)J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lr4/rz;->T6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v6, p0

    cmp-long p0, v4, v6

    if-ltz p0, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public static synthetic y(Lr4/zi1;)Lr4/al1;
    .locals 0

    iget-object p0, p0, Lr4/zi1;->t:Lr4/al1;

    return-object p0
.end method

.method public static synthetic z(Lr4/zi1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lr4/zi1;->D:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->Q(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/zi1;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->l0(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized D(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/zi1;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->p(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/zi1;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized E(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->e0(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F(Lr4/al1;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rz;->e1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/vi1;

    invoke-direct {v1, p0, p1}, Lr4/vi1;-><init>(Lr4/zi1;Lr4/al1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lr4/zi1;->w(Lr4/al1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized G(Lr4/al1;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rz;->e1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/wi1;

    invoke-direct {v1, p0, p1}, Lr4/wi1;-><init>(Lr4/zi1;Lr4/al1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lr4/zi1;->x(Lr4/al1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->l:Lr4/ek1;

    iget-object v1, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-virtual {v0, v1}, Lr4/ek1;->b(Lr4/al1;)V

    iget-object v2, p0, Lr4/zi1;->k:Lr4/mj1;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lr4/mj1;->f(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    iget-boolean p1, p0, Lr4/zi1;->w:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {p1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {p1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    new-instance p2, Lp/a;

    invoke-direct {p2}, Lp/a;-><init>()V

    const-string p3, "onSdkAdUserInteractionClick"

    invoke-interface {p1, p3, p2}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1, p2, p3}, Lr4/mj1;->g(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized J(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/zi1;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lr4/rz;->g1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->h0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/zi1;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lr4/zi1;->D:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eqz p4, :cond_3

    :try_start_2
    iget-object p4, p0, Lr4/zi1;->l:Lr4/ek1;

    iget-object v1, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-virtual {p4, v1}, Lr4/ek1;->c(Lr4/al1;)V

    iget-object p4, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {p4, p1, p2, p3}, Lr4/mj1;->k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    iput-boolean v0, p0, Lr4/zi1;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    sget-object p4, Lr4/rz;->q2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lr4/zi1;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p4, p0, Lr4/zi1;->l:Lr4/ek1;

    iget-object v1, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-virtual {p4, v1}, Lr4/ek1;->c(Lr4/al1;)V

    iget-object p4, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {p4, p1, p2, p3}, Lr4/mj1;->k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    iput-boolean v0, p0, Lr4/zi1;->v:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized K(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1, p2, p3}, Lr4/mj1;->l(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized L(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1, p2, p3}, Lr4/mj1;->d(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized M(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->j(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized N(Lr4/g40;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->q(Lr4/g40;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized O()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized P(Lr4/uw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->a(Lr4/uw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Q(Lr4/rw;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0, p1}, Lr4/mj1;->c(Lr4/rw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/zi1;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/si1;

    invoke-direct {v1, p0}, Lr4/si1;-><init>(Lr4/zi1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->d0()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lr4/zi1;->i:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lr4/ti1;->a(Lr4/mj1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lr4/i31;->a()V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/zi1;->u:Z

    iget-object v0, p0, Lr4/zi1;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/ui1;

    invoke-direct {v1, p0}, Lr4/ui1;-><init>(Lr4/zi1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lr4/i31;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->t:Lr4/al1;

    if-nez v0, :cond_0

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v0, v0, Lr4/yj1;

    iget-object v1, p0, Lr4/zi1;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lr4/xi1;

    invoke-direct {v2, p0, v0}, Lr4/xi1;-><init>(Lr4/zi1;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->c()Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;Z)V
    .locals 12

    iget-object v0, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "javascript"

    move-object v0, v1

    :goto_1
    move-object v7, v2

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v2

    iget-object v3, p0, Lr4/zi1;->A:Landroid/content/Context;

    invoke-interface {v2, v3}, Lr4/qe0;->e0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "Failed to initialize omid in InternalNativeAd"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, p0, Lr4/zi1;->z:Lr4/im0;

    iget v3, v2, Lr4/im0;->b:I

    iget v2, v2, Lr4/im0;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    sget-object v2, Lr4/re0;->k:Lr4/re0;

    sget-object v4, Lr4/se0;->d:Lr4/se0;

    :goto_2
    move-object v10, v2

    move-object v9, v4

    goto :goto_3

    :cond_5
    sget-object v2, Lr4/re0;->d:Lr4/re0;

    iget-object v4, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v4}, Lr4/ej1;->d0()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    sget-object v4, Lr4/se0;->p:Lr4/se0;

    goto :goto_2

    :cond_6
    sget-object v4, Lr4/se0;->k:Lr4/se0;

    goto :goto_2

    :goto_3
    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v2

    invoke-interface {v0}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lr4/i31;->b:Lr4/no2;

    iget-object v11, v5, Lr4/no2;->i0:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "javascript"

    move-object v8, p1

    invoke-interface/range {v2 .. v11}, Lr4/qe0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Failed to create omid session in InternalNativeAd"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v2, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v2, p1}, Lr4/ej1;->X(Lf4/a;)V

    invoke-interface {v0, p1}, Lr4/cs0;->y0(Lf4/a;)V

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/zi1;->w:Z

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object p2

    invoke-interface {p2, p1}, Lr4/qe0;->zzf(Lf4/a;)V

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    const-string p2, "onSdkLoaded"

    invoke-interface {v0, p2, p1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v0}, Lr4/jj1;->d()Z

    move-result v0

    return v0
.end method

.method public final n(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->u()Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v1

    iget-object v2, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v2}, Lr4/jj1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->u()Lf4/a;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->m:Lr4/jj1;

    invoke-virtual {v1}, Lr4/jj1;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lr4/qe0;->c(Lf4/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final p()Lr4/bj1;
    .locals 1

    iget-object v0, p0, Lr4/zi1;->B:Lr4/bj1;

    return-object v0
.end method

.method public final declared-synchronized q(Lr4/ex;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->C:Lr4/g92;

    invoke-virtual {v0, p1}, Lr4/g92;->a(Lr4/ex;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic r(Z)V
    .locals 4

    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    iget-object v1, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-interface {v1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-interface {v2}, Lr4/al1;->h()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-interface {v3}, Lr4/al1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lr4/mj1;->b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public final synthetic s(Lr4/al1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/zi1;->x(Lr4/al1;)V

    return-void
.end method

.method public final synthetic t(Lr4/al1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/zi1;->w(Lr4/al1;)V

    return-void
.end method

.method public final synthetic u()V
    .locals 1

    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {v0}, Lr4/mj1;->z()V

    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->z()V

    return-void
.end method

.method public final bridge synthetic v()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->d0()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Google"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->e()Lr4/c80;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->e()Lr4/c80;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->r:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/w70;

    invoke-interface {v0, v1}, Lr4/c80;->J5(Lr4/w70;)V

    return-void

    :cond_1
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->c()Lr4/a40;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lr4/zi1;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->c()Lr4/a40;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->q:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/j40;

    invoke-interface {v0, v1}, Lr4/a40;->W1(Lr4/j40;)V

    return-void

    :cond_2
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    iget-object v3, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v3}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr4/pj1;->f(Ljava/lang/String;)Lr4/t30;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lr4/zi1;->l(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    iget-object v1, p0, Lr4/zi1;->j:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/pj1;->f(Ljava/lang/String;)Lr4/t30;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->s:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g30;

    invoke-interface {v0, v1}, Lr4/t30;->l2(Lr4/g30;)V

    return-void

    :cond_4
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->b()Lr4/k30;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lr4/zi1;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->b()Lr4/k30;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->p:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/a30;

    invoke-interface {v0, v1}, Lr4/k30;->c1(Lr4/a30;)V

    return-void

    :cond_5
    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->a()Lr4/n30;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1, v2}, Lr4/zi1;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Lr4/zi1;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->a()Lr4/n30;

    move-result-object v0

    iget-object v1, p0, Lr4/zi1;->o:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/c30;

    invoke-interface {v0, v1}, Lr4/n30;->K5(Lr4/c30;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized w(Lr4/al1;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/zi1;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lr4/zi1;->t:Lr4/al1;

    iget-object v0, p0, Lr4/zi1;->l:Lr4/ek1;

    invoke-virtual {v0, p1}, Lr4/ek1;->a(Lr4/al1;)V

    iget-object v1, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Lr4/al1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lr4/al1;->k()Ljava/util/Map;

    move-result-object v4

    move-object v5, p1

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lr4/mj1;->o(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lr4/rz;->K1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/zi1;->y:Lr4/u;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/q;->c(Landroid/view/View;)V

    :cond_1
    sget-object v0, Lr4/rz;->g1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-boolean v1, v0, Lr4/no2;->h0:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lr4/no2;->g0:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lr4/zi1;->t:Lr4/al1;

    invoke-interface {v2}, Lr4/al1;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lr4/zi1;->D:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lr4/zi1;->A:Landroid/content/Context;

    new-instance v4, Lr4/om;

    invoke-direct {v4, v3, v2}, Lr4/om;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lr4/zi1;->E:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lr4/yi1;

    invoke-direct {v2, p0, v1}, Lr4/yi1;-><init>(Lr4/zi1;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lr4/om;->a(Lr4/nm;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {p1}, Lr4/al1;->f()Lr4/om;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lr4/al1;->f()Lr4/om;

    move-result-object p1

    iget-object v0, p0, Lr4/zi1;->x:Lr4/pj0;

    invoke-virtual {p1, v0}, Lr4/om;->a(Lr4/nm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final x(Lr4/al1;)V
    .locals 3

    iget-object v0, p0, Lr4/zi1;->k:Lr4/mj1;

    invoke-interface {p1}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lr4/al1;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lr4/mj1;->e(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-interface {p1}, Lr4/al1;->t0()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Lr4/al1;->f()Lr4/om;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lr4/al1;->f()Lr4/om;

    move-result-object p1

    iget-object v0, p0, Lr4/zi1;->x:Lr4/pj0;

    invoke-virtual {p1, v0}, Lr4/om;->b(Lr4/nm;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lr4/zi1;->t:Lr4/al1;

    return-void
.end method
