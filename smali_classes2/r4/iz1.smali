.class public final Lr4/iz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ic1;
.implements Lr4/gt;
.implements Lr4/d81;
.implements Lr4/n71;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/vp2;

.field public final d:Lr4/bp2;

.field public final k:Lr4/no2;

.field public final p:Lr4/c12;

.field public q:Ljava/lang/Boolean;

.field public final r:Z

.field public final s:Lr4/xt2;

.field public final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/vp2;Lr4/bp2;Lr4/no2;Lr4/c12;Lr4/xt2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/iz1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/iz1;->b:Lr4/vp2;

    iput-object p3, p0, Lr4/iz1;->d:Lr4/bp2;

    iput-object p4, p0, Lr4/iz1;->k:Lr4/no2;

    iput-object p5, p0, Lr4/iz1;->p:Lr4/c12;

    sget-object p1, Lr4/rz;->c5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/iz1;->r:Z

    iput-object p6, p0, Lr4/iz1;->s:Lr4/xt2;

    iput-object p7, p0, Lr4/iz1;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 1

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-virtual {p0, v0}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/iz1;->j(Lr4/wt2;)V

    return-void
.end method

.method public final S(Lr4/lt;)V
    .locals 4

    iget-boolean v0, p0, Lr4/iz1;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lr4/lt;->a:I

    iget-object v1, p1, Lr4/lt;->b:Ljava/lang/String;

    iget-object v2, p1, Lr4/lt;->d:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lr4/lt;->k:Lr4/lt;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lr4/lt;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p1, Lr4/lt;->k:Lr4/lt;

    iget v0, p1, Lr4/lt;->a:I

    iget-object v1, p1, Lr4/lt;->b:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lr4/iz1;->b:Lr4/vp2;

    invoke-virtual {p1, v1}, Lr4/vp2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    invoke-virtual {p0, v1}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "adapter"

    invoke-virtual {v1, v2, v3}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "arec"

    invoke-virtual {v1, v2, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "areec"

    invoke-virtual {v1, v0, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_3
    iget-object p1, p0, Lr4/iz1;->s:Lr4/xt2;

    invoke-interface {p1, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final U(Lr4/ch1;)V
    .locals 3

    iget-boolean v0, p0, Lr4/iz1;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_1
    iget-object p1, p0, Lr4/iz1;->s:Lr4/xt2;

    invoke-interface {p1, v0}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lr4/iz1;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/iz1;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lr4/rz;->Y0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v1, p0, Lr4/iz1;->a:Landroid/content/Context;

    invoke-static {v1}, Lb3/k2;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v1, v0, v3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lr4/iz1;->q:Ljava/lang/Boolean;

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lr4/iz1;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lr4/iz1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/iz1;->s:Lr4/xt2;

    const-string v1, "adapter_impression"

    invoke-virtual {p0, v1}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lr4/iz1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/iz1;->s:Lr4/xt2;

    const-string v1, "adapter_shown"

    invoke-virtual {p0, v1}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Lr4/wt2;
    .locals 2

    invoke-static {p1}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object p1

    iget-object v0, p0, Lr4/iz1;->d:Lr4/bp2;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lr4/wt2;->g(Lr4/bp2;Lr4/rl0;)Lr4/wt2;

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    invoke-virtual {p1, v0}, Lr4/wt2;->i(Lr4/no2;)Lr4/wt2;

    iget-object v0, p0, Lr4/iz1;->t:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->t:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {p1, v1, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_0
    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const/4 v0, 0x1

    iget-object v1, p0, Lr4/iz1;->a:Landroid/content/Context;

    invoke-static {v1}, Lb3/k2;->i(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "offline"

    goto :goto_0

    :cond_1
    const-string v0, "online"

    :goto_0
    const-string v1, "device_connectivity"

    invoke-virtual {p1, v1, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_timestamp"

    invoke-virtual {p1, v1, v0}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    const-string v0, "offline_ad"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_2
    return-object p1
.end method

.method public final e()V
    .locals 4

    iget-boolean v0, p0, Lr4/iz1;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/iz1;->s:Lr4/xt2;

    const-string v1, "ifts"

    invoke-virtual {p0, v1}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "blocked"

    invoke-virtual {v1, v2, v3}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lr4/iz1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    invoke-virtual {p0, v0}, Lr4/iz1;->d(Ljava/lang/String;)Lr4/wt2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/iz1;->j(Lr4/wt2;)V

    return-void
.end method

.method public final j(Lr4/wt2;)V
    .locals 7

    iget-object v0, p0, Lr4/iz1;->k:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/iz1;->s:Lr4/xt2;

    invoke-interface {v0, p1}, Lr4/xt2;->b(Lr4/wt2;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lr4/e12;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v2

    iget-object v0, p0, Lr4/iz1;->d:Lr4/bp2;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget-object v4, v0, Lr4/so2;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lr4/e12;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lr4/iz1;->p:Lr4/c12;

    invoke-virtual {v0, p1}, Lr4/c12;->g(Lr4/e12;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/iz1;->s:Lr4/xt2;

    invoke-interface {v0, p1}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void
.end method
