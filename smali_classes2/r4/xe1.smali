.class public final Lr4/xe1;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/nm;",
        ">;",
        "Lr4/nm;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lr4/om;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final k:Lr4/no2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lr4/no2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/nm;",
            ">;>;",
            "Lr4/no2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    new-instance p2, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lr4/xe1;->b:Ljava/util/Map;

    iput-object p1, p0, Lr4/xe1;->d:Landroid/content/Context;

    iput-object p3, p0, Lr4/xe1;->k:Lr4/no2;

    return-void
.end method


# virtual methods
.method public final declared-synchronized T0(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xe1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/om;

    if-nez v0, :cond_0

    new-instance v0, Lr4/om;

    iget-object v1, p0, Lr4/xe1;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lr4/om;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lr4/om;->a(Lr4/nm;)V

    iget-object v1, p0, Lr4/xe1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lr4/xe1;->k:Lr4/no2;

    iget-boolean p1, p1, Lr4/no2;->T:Z

    if-eqz p1, :cond_1

    sget-object p1, Lr4/rz;->T0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lr4/rz;->S0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/om;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lr4/om;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Y(Lr4/mm;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lr4/we1;

    invoke-direct {v0, p1}, Lr4/we1;-><init>(Lr4/mm;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Z0(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xe1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/xe1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/om;

    invoke-virtual {v0, p0}, Lr4/om;->b(Lr4/nm;)V

    iget-object v0, p0, Lr4/xe1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
