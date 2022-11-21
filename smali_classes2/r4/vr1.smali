.class public final Lr4/vr1;
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

.field public final d:Lr4/ls1;

.field public final k:Lr4/bp2;

.field public final p:Lr4/no2;

.field public final q:Lr4/c12;

.field public r:Ljava/lang/Boolean;

.field public final s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/vp2;Lr4/ls1;Lr4/bp2;Lr4/no2;Lr4/c12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vr1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/vr1;->b:Lr4/vp2;

    iput-object p3, p0, Lr4/vr1;->d:Lr4/ls1;

    iput-object p4, p0, Lr4/vr1;->k:Lr4/bp2;

    iput-object p5, p0, Lr4/vr1;->p:Lr4/no2;

    iput-object p6, p0, Lr4/vr1;->q:Lr4/c12;

    sget-object p1, Lr4/rz;->c5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/vr1;->s:Z

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 1

    iget-object v0, p0, Lr4/vr1;->p:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/vr1;->j(Lr4/ks1;)V

    return-void
.end method

.method public final S(Lr4/lt;)V
    .locals 5

    iget-boolean v0, p0, Lr4/vr1;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    iget v1, p1, Lr4/lt;->a:I

    iget-object v2, p1, Lr4/lt;->b:Ljava/lang/String;

    iget-object v3, p1, Lr4/lt;->d:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lr4/lt;->k:Lr4/lt;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lr4/lt;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p1, Lr4/lt;->k:Lr4/lt;

    iget v1, p1, Lr4/lt;->a:I

    iget-object v2, p1, Lr4/lt;->b:Ljava/lang/String;

    :cond_1
    if-ltz v1, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "arec"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_2
    iget-object p1, p0, Lr4/vr1;->b:Lr4/vp2;

    invoke-virtual {p1, v2}, Lr4/vp2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "areec"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_3
    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.method public final U(Lr4/ch1;)V
    .locals 3

    iget-boolean v0, p0, Lr4/vr1;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_1
    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lr4/vr1;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/vr1;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lr4/rz;->Y0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v1, p0, Lr4/vr1;->a:Landroid/content/Context;

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

    iput-object v0, p0, Lr4/vr1;->r:Ljava/lang/Boolean;

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
    iget-object v0, p0, Lr4/vr1;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lr4/vr1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_impression"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lr4/vr1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_shown"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.method public final d(Ljava/lang/String;)Lr4/ks1;
    .locals 3

    iget-object v0, p0, Lr4/vr1;->d:Lr4/ls1;

    invoke-virtual {v0}, Lr4/ls1;->d()Lr4/ks1;

    move-result-object v0

    iget-object v1, p0, Lr4/vr1;->k:Lr4/bp2;

    iget-object v1, v1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v0, v1}, Lr4/ks1;->b(Lr4/so2;)Lr4/ks1;

    iget-object v1, p0, Lr4/vr1;->p:Lr4/no2;

    invoke-virtual {v0, v1}, Lr4/ks1;->c(Lr4/no2;)Lr4/ks1;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    iget-object p1, p0, Lr4/vr1;->p:Lr4/no2;

    iget-object p1, p1, Lr4/no2;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/vr1;->p:Lr4/no2;

    iget-object p1, p1, Lr4/no2;->t:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_0
    iget-object p1, p0, Lr4/vr1;->p:Lr4/no2;

    iget-boolean p1, p1, Lr4/no2;->f0:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const/4 p1, 0x1

    iget-object v1, p0, Lr4/vr1;->a:Landroid/content/Context;

    invoke-static {v1}, Lb3/k2;->i(Landroid/content/Context;)Z

    move-result v1

    if-eq p1, v1, :cond_1

    const-string p1, "offline"

    goto :goto_0

    :cond_1
    const-string p1, "online"

    :goto_0
    const-string v1, "device_connectivity"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_timestamp"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    const-string p1, "offline_ad"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_2
    sget-object p1, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lr4/vr1;->k:Lr4/bp2;

    invoke-static {p1}, Lh3/p;->a(Lr4/bp2;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scar"

    invoke-virtual {v0, v2, v1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lr4/vr1;->k:Lr4/bp2;

    invoke-static {p1}, Lh3/p;->b(Lr4/bp2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ragent"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_3
    iget-object p1, p0, Lr4/vr1;->k:Lr4/bp2;

    invoke-static {p1}, Lh3/p;->c(Lr4/bp2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rtype"

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    :cond_4
    return-object v0
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lr4/vr1;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "blocked"

    invoke-virtual {v0, v1, v2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lr4/vr1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/vr1;->p:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    invoke-virtual {p0, v0}, Lr4/vr1;->d(Ljava/lang/String;)Lr4/ks1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/vr1;->j(Lr4/ks1;)V

    return-void
.end method

.method public final j(Lr4/ks1;)V
    .locals 7

    iget-object v0, p0, Lr4/vr1;->p:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/ks1;->f()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lr4/e12;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v2

    iget-object v0, p0, Lr4/vr1;->k:Lr4/bp2;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget-object v4, v0, Lr4/so2;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lr4/e12;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lr4/vr1;->q:Lr4/c12;

    invoke-virtual {v0, p1}, Lr4/c12;->g(Lr4/e12;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lr4/ks1;->e()V

    return-void
.end method
