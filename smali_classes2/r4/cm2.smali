.class public final Lr4/cm2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lr4/pq2;Lr4/ir2;)Lr4/am2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/pq2;",
            "Lr4/ir2;",
            ")",
            "Lr4/am2<",
            "Lr4/j01;",
            "Lr4/p01;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lr4/cm2;->c(Landroid/content/Context;Lr4/pq2;Lr4/ir2;)Lr4/am2;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lr4/pq2;Lr4/ir2;)Lr4/am2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/pq2;",
            "Lr4/ir2;",
            ")",
            "Lr4/am2<",
            "Lr4/u01;",
            "Lr4/a11;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lr4/cm2;->c(Landroid/content/Context;Lr4/pq2;Lr4/ir2;)Lr4/am2;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lr4/pq2;Lr4/ir2;)Lr4/am2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AppOpenAdRequestComponent::",
            "Lr4/r61<",
            "TAppOpenAd;>;AppOpenAd:",
            "Lr4/i31;",
            ">(",
            "Landroid/content/Context;",
            "Lr4/pq2;",
            "Lr4/ir2;",
            ")",
            "Lr4/am2<",
            "TAppOpenAdRequestComponent;TAppOpenAd;>;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->F4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->p()Lr4/hl0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->q()Lr4/hl0;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/hl0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v0, Lr4/rz;->V4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lr4/rz;->E4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Lr4/al2;

    invoke-direct {v0}, Lr4/al2;-><init>()V

    sget-object v1, Lr4/yq2;->d:Lr4/yq2;

    new-instance v2, Lr4/dl2;

    invoke-direct {v2, v0}, Lr4/dl2;-><init>(Lr4/am2;)V

    invoke-virtual {p2, v1, p0, p1, v2}, Lr4/ir2;->a(Lr4/yq2;Landroid/content/Context;Lr4/pq2;Lr4/or2;)Lr4/hr2;

    move-result-object p0

    new-instance p1, Lr4/fl2;

    new-instance v1, Lr4/ql2;

    new-instance p2, Lr4/pl2;

    invoke-direct {p2}, Lr4/pl2;-><init>()V

    invoke-direct {v1, p2}, Lr4/ql2;-><init>(Lr4/am2;)V

    new-instance v2, Lr4/ml2;

    iget-object p2, p0, Lr4/hr2;->a:Lr4/uq2;

    sget-object v5, Lr4/qm0;->a:Lr4/i83;

    invoke-direct {v2, p2, v5}, Lr4/ml2;-><init>(Lr4/uq2;Ljava/util/concurrent/Executor;)V

    iget-object v3, p0, Lr4/hr2;->b:Lr4/qr2;

    iget-object p0, p0, Lr4/hr2;->a:Lr4/uq2;

    invoke-interface {p0}, Lr4/uq2;->c()Lr4/br2;

    move-result-object p0

    iget-object v4, p0, Lr4/br2;->s:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lr4/fl2;-><init>(Lr4/am2;Lr4/am2;Lr4/qr2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_3
    new-instance p0, Lr4/pl2;

    invoke-direct {p0}, Lr4/pl2;-><init>()V

    return-object p0
.end method
