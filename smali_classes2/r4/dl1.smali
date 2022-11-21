.class public final Lr4/dl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/mj1;


# instance fields
.field public final a:Lr4/ub0;

.field public final b:Lr4/b81;

.field public final c:Lr4/h71;

.field public final d:Lr4/af1;

.field public final e:Landroid/content/Context;

.field public final f:Lr4/no2;

.field public final g:Lr4/im0;

.field public final h:Lr4/hp2;

.field public i:Z

.field public j:Z

.field public k:Z

.field public final l:Lr4/qb0;

.field public final m:Lr4/rb0;


# direct methods
.method public constructor <init>(Lr4/qb0;Lr4/rb0;Lr4/ub0;Lr4/b81;Lr4/h71;Lr4/af1;Landroid/content/Context;Lr4/no2;Lr4/im0;Lr4/hp2;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p11, 0x0

    iput-boolean p11, p0, Lr4/dl1;->i:Z

    iput-boolean p11, p0, Lr4/dl1;->j:Z

    const/4 p11, 0x1

    iput-boolean p11, p0, Lr4/dl1;->k:Z

    iput-object p1, p0, Lr4/dl1;->l:Lr4/qb0;

    iput-object p2, p0, Lr4/dl1;->m:Lr4/rb0;

    iput-object p3, p0, Lr4/dl1;->a:Lr4/ub0;

    iput-object p4, p0, Lr4/dl1;->b:Lr4/b81;

    iput-object p5, p0, Lr4/dl1;->c:Lr4/h71;

    iput-object p6, p0, Lr4/dl1;->d:Lr4/af1;

    iput-object p7, p0, Lr4/dl1;->e:Landroid/content/Context;

    iput-object p8, p0, Lr4/dl1;->f:Lr4/no2;

    iput-object p9, p0, Lr4/dl1;->g:Lr4/im0;

    iput-object p10, p0, Lr4/dl1;->h:Lr4/hp2;

    return-void
.end method

.method public static final s(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final B()V
    .locals 0

    return-void
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lr4/uw;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
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

    iget-boolean p2, p0, Lr4/dl1;->j:Z

    if-nez p2, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lr4/dl1;->f:Lr4/no2;

    iget-boolean p2, p2, Lr4/no2;->H:Z

    if-nez p2, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lr4/dl1;->r(Landroid/view/View;)V

    return-void
.end method

.method public final c(Lr4/rw;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    iget-object p2, p0, Lr4/dl1;->a:Lr4/ub0;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lr4/ub0;->L5(Lf4/a;)V

    return-void

    :cond_0
    iget-object p2, p0, Lr4/dl1;->l:Lr4/qb0;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lr4/qb0;->A2(Lf4/a;)V

    return-void

    :cond_1
    iget-object p2, p0, Lr4/dl1;->m:Lr4/rb0;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lr4/rb0;->c7(Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call untrackView"

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
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

    iget-boolean p2, p0, Lr4/dl1;->j:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/dl1;->f:Lr4/no2;

    iget-boolean p2, p2, Lr4/no2;->H:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lr4/dl1;->r(Landroid/view/View;)V

    return-void
.end method

.method public final g(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/dl1;->j:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lr4/dl1;->f:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->H:Z

    return v0
.end method

.method public final j(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-boolean p1, p0, Lr4/dl1;->i:Z

    if-nez p1, :cond_0

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object p1

    iget-object p2, p0, Lr4/dl1;->e:Landroid/content/Context;

    iget-object p3, p0, Lr4/dl1;->g:Lr4/im0;

    iget-object p3, p3, Lr4/im0;->a:Ljava/lang/String;

    iget-object v0, p0, Lr4/dl1;->f:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->C:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/dl1;->h:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, v1}, Lb3/c0;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/dl1;->i:Z

    :cond_0
    iget-boolean p1, p0, Lr4/dl1;->k:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lr4/dl1;->a:Lr4/ub0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lr4/ub0;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lr4/dl1;->a:Lr4/ub0;

    invoke-interface {p1}, Lr4/ub0;->E()V

    iget-object p1, p0, Lr4/dl1;->b:Lr4/b81;

    invoke-virtual {p1}, Lr4/b81;->zza()V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lr4/dl1;->l:Lr4/qb0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lr4/qb0;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lr4/dl1;->l:Lr4/qb0;

    invoke-virtual {p1}, Lr4/qb0;->l()V

    iget-object p1, p0, Lr4/dl1;->b:Lr4/b81;

    invoke-virtual {p1}, Lr4/b81;->zza()V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lr4/dl1;->m:Lr4/rb0;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lr4/rb0;->p()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lr4/dl1;->m:Lr4/rb0;

    invoke-virtual {p1}, Lr4/rb0;->i()V

    iget-object p1, p0, Lr4/dl1;->b:Lr4/b81;

    invoke-virtual {p1}, Lr4/b81;->zza()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 8
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
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    iget-object p4, p0, Lr4/dl1;->f:Lr4/no2;

    iget-object p4, p4, Lr4/no2;->g0:Lorg/json/JSONObject;

    sget-object p5, Lr4/rz;->b1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p5}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_e

    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    move-object p5, p2

    :goto_0
    if-nez p3, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p5

    :catch_0
    :cond_3
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_5

    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lr4/rz;->c1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v6}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "3010"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lr4/dl1;->a:Lr4/ub0;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    :try_start_1
    invoke-interface {v2}, Lr4/ub0;->m()Lf4/a;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    goto :goto_5

    :cond_7
    :try_start_2
    iget-object v2, p0, Lr4/dl1;->l:Lr4/qb0;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Lr4/qb0;->C6()Lf4/a;

    move-result-object v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_8
    :try_start_4
    iget-object v2, p0, Lr4/dl1;->m:Lr4/rb0;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Lr4/rb0;->t()Lf4/a;

    move-result-object v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :cond_9
    move-object v2, v5

    :goto_4
    if-eqz v2, :cond_a

    :try_start_6
    invoke-static {v2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_a
    :goto_5
    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_c
    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v2}, Lb3/b1;->a(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v4, p0, Lr4/dl1;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v6, :cond_d

    goto/16 :goto_2

    :cond_e
    :goto_6
    :try_start_a
    iput-boolean v0, p0, Lr4/dl1;->k:Z

    invoke-static {p2}, Lr4/dl1;->s(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lr4/dl1;->s(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    iget-object p4, p0, Lr4/dl1;->a:Lr4/ub0;

    if-eqz p4, :cond_f

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-static {p3}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lr4/ub0;->d5(Lf4/a;Lf4/a;Lf4/a;)V

    return-void

    :cond_f
    iget-object p4, p0, Lr4/dl1;->l:Lr4/qb0;

    if-eqz p4, :cond_10

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-static {p3}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lr4/qb0;->f7(Lf4/a;Lf4/a;Lf4/a;)V

    iget-object p2, p0, Lr4/dl1;->l:Lr4/qb0;

    invoke-virtual {p2, p1}, Lr4/qb0;->Q4(Lf4/a;)V

    return-void

    :cond_10
    iget-object p4, p0, Lr4/dl1;->m:Lr4/rb0;

    if-eqz p4, :cond_11

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-static {p3}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lr4/rb0;->C6(Lf4/a;Lf4/a;Lf4/a;)V

    iget-object p2, p0, Lr4/dl1;->m:Lr4/rb0;

    invoke-virtual {p2, p1}, Lr4/rb0;->b2(Lf4/a;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    :cond_11
    return-void

    :catch_2
    move-exception p1

    const-string p2, "Failed to call trackView"

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final q(Lr4/g40;)V
    .locals 0

    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/dl1;->a:Lr4/ub0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/ub0;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/dl1;->a:Lr4/ub0;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/ub0;->G0(Lf4/a;)V

    iget-object p1, p0, Lr4/dl1;->c:Lr4/h71;

    invoke-virtual {p1}, Lr4/h71;->F0()V

    sget-object p1, Lr4/rz;->b7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/dl1;->d:Lr4/af1;

    invoke-virtual {p1}, Lr4/af1;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/dl1;->l:Lr4/qb0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/qb0;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/dl1;->l:Lr4/qb0;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/qb0;->i0(Lf4/a;)V

    iget-object p1, p0, Lr4/dl1;->c:Lr4/h71;

    invoke-virtual {p1}, Lr4/h71;->F0()V

    sget-object p1, Lr4/rz;->b7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/dl1;->d:Lr4/af1;

    invoke-virtual {p1}, Lr4/af1;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lr4/dl1;->m:Lr4/rb0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr4/rb0;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/dl1;->m:Lr4/rb0;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/rb0;->z2(Lf4/a;)V

    iget-object p1, p0, Lr4/dl1;->c:Lr4/h71;

    invoke-virtual {p1}, Lr4/h71;->F0()V

    sget-object p1, Lr4/rz;->b7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/dl1;->d:Lr4/af1;

    invoke-virtual {p1}, Lr4/af1;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to call handleClick"

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z()V
    .locals 0

    return-void
.end method
