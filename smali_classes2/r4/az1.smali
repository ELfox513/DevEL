.class public final Lr4/az1;
.super Lr4/fg0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final d:Lr4/zg0;

.field public final k:Lr4/ux0;

.field public final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/xy1;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lr4/ah0;

.field public final r:Lr4/fz1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/ah0;Lr4/ux0;Lr4/zg0;Ljava/util/ArrayDeque;Lr4/fz1;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/ah0;",
            "Lr4/ux0;",
            "Lr4/zg0;",
            "Ljava/util/ArrayDeque<",
            "Lr4/xy1;",
            ">;",
            "Lr4/fz1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/fg0;-><init>()V

    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lr4/az1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/az1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/az1;->q:Lr4/ah0;

    iput-object p5, p0, Lr4/az1;->d:Lr4/zg0;

    iput-object p4, p0, Lr4/az1;->k:Lr4/ux0;

    iput-object p6, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    iput-object p7, p0, Lr4/az1;->r:Lr4/fz1;

    return-void
.end method

.method public static k7(Lr4/og0;Lr4/mt2;Lr4/xg2;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            "Lr4/mt2;",
            "Lr4/xg2;",
            ")",
            "Lr4/h83<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/oy1;

    invoke-direct {v0, p2}, Lr4/oy1;-><init>(Lr4/xg2;)V

    sget-object p2, Lr4/py1;->a:Lr4/ps2;

    sget-object v1, Lr4/gt2;->q:Lr4/gt2;

    iget-object p0, p0, Lr4/og0;->a:Landroid/os/Bundle;

    invoke-static {p0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p0

    invoke-virtual {p0, v0}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object p0

    invoke-virtual {p0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p0

    return-object p0
.end method

.method public static l7(Lr4/h83;Lr4/mt2;Lr4/ea0;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lr4/mt2;",
            "Lr4/ea0;",
            ")",
            "Lr4/h83<",
            "Lr4/rg0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/ba0;->b:Lr4/y90;

    sget-object v1, Lr4/qy1;->a:Lr4/v90;

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    move-result-object p2

    sget-object v0, Lr4/gt2;->s:Lr4/gt2;

    invoke-virtual {p1, v0, p0}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p0

    invoke-virtual {p0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c3(Ljava/lang/String;Lr4/kg0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/az1;->h7(Ljava/lang/String;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lr4/az1;->m7(Lr4/h83;Lr4/kg0;)V

    return-void
.end method

.method public final f7(Lr4/og0;I)Lr4/h83;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            "I)",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v0

    iget-object v1, p0, Lr4/az1;->a:Landroid/content/Context;

    invoke-static {}, Lr4/im0;->X0()Lr4/im0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr4/u90;->a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v0

    iget-object v1, p0, Lr4/az1;->k:Lr4/ux0;

    invoke-interface {v1, p1, p2}, Lr4/ux0;->a(Lr4/og0;I)Lr4/xg2;

    move-result-object v1

    sget-object v2, Lr4/zy1;->d:Lr4/w90;

    sget-object v3, Lr4/ba0;->c:Lr4/v90;

    const-string v4, "google.afma.response.normalize"

    invoke-virtual {v0, v4, v2, v3}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    move-result-object v2

    new-instance v3, Lr4/hz1;

    iget-object v4, p1, Lr4/og0;->r:Ljava/lang/String;

    invoke-direct {v3, v4}, Lr4/hz1;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lr4/az1;->a:Landroid/content/Context;

    iget-object v4, p1, Lr4/og0;->b:Lr4/im0;

    iget-object v7, v4, Lr4/im0;->a:Ljava/lang/String;

    iget-object v8, p0, Lr4/az1;->q:Lr4/ah0;

    new-instance v4, Lr4/ez1;

    const/4 v10, 0x0

    move-object v5, v4

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lr4/ez1;-><init>(Landroid/content/Context;Ljava/lang/String;Lr4/ah0;I[B)V

    invoke-virtual {v1}, Lr4/xg2;->c()Lr4/mt2;

    move-result-object p2

    sget-object v5, Lr4/l10;->a:Lr4/u00;

    invoke-virtual {v5}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget-object v5, p1, Lr4/og0;->u:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Request contained a PoolKey but split request is disabled."

    invoke-static {v5}, Lb3/w1;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object v5, Lr4/l10;->d:Lr4/u00;

    invoke-virtual {v5}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lr4/og0;->s:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lr4/az1;->o7(Ljava/lang/String;)Lr4/xy1;

    move-result-object v5

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_1
    iget-object v5, p1, Lr4/og0;->u:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lr4/og0;->u:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lr4/az1;->p7(Ljava/lang/String;)Lr4/xy1;

    move-result-object v5

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    const-string v5, "Request contained a PoolKey but no matching parameters were found."

    invoke-static {v5}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v6, :cond_4

    invoke-static {p1, p2, v1}, Lr4/az1;->k7(Lr4/og0;Lr4/mt2;Lr4/xg2;)Lr4/h83;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lr4/az1;->l7(Lr4/h83;Lr4/mt2;Lr4/ea0;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/gt2;->t:Lr4/gt2;

    new-array v6, v8, [Lr4/h83;

    aput-object v0, v6, v7

    aput-object p1, v6, v5

    invoke-virtual {p2, v1, v6}, Lr4/et2;->f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;

    move-result-object v1

    new-instance v6, Lr4/ly1;

    invoke-direct {v6, p1, v0}, Lr4/ly1;-><init>(Lr4/h83;Lr4/h83;)V

    invoke-virtual {v1, v6}, Lr4/us2;->a(Ljava/util/concurrent/Callable;)Lr4/dt2;

    move-result-object v1

    invoke-virtual {v1, v3}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object v1

    invoke-virtual {v1, v4}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object v1

    invoke-virtual {v1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v1

    sget-object v3, Lr4/gt2;->u:Lr4/gt2;

    const/4 v4, 0x3

    new-array v4, v4, [Lr4/h83;

    aput-object p1, v4, v7

    aput-object v0, v4, v5

    aput-object v1, v4, v8

    invoke-virtual {p2, v3, v4}, Lr4/et2;->f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;

    move-result-object p2

    new-instance v3, Lr4/my1;

    invoke-direct {v3, v1, p1, v0}, Lr4/my1;-><init>(Lr4/h83;Lr4/h83;Lr4/h83;)V

    invoke-virtual {p2, v3}, Lr4/us2;->a(Ljava/util/concurrent/Callable;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v2}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lr4/gz1;

    iget-object v0, v6, Lr4/xy1;->b:Lorg/json/JSONObject;

    iget-object v1, v6, Lr4/xy1;->a:Lr4/rg0;

    invoke-direct {p1, v0, v1}, Lr4/gz1;-><init>(Lorg/json/JSONObject;Lr4/rg0;)V

    sget-object v0, Lr4/gt2;->t:Lr4/gt2;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v3}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v4}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    invoke-static {v6}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/gt2;->u:Lr4/gt2;

    new-array v3, v8, [Lr4/h83;

    aput-object p1, v3, v7

    aput-object v0, v3, v5

    invoke-virtual {p2, v1, v3}, Lr4/et2;->f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;

    move-result-object p2

    new-instance v1, Lr4/ny1;

    invoke-direct {v1, p1, v0}, Lr4/ny1;-><init>(Lr4/h83;Lr4/h83;)V

    invoke-virtual {p2, v1}, Lr4/us2;->a(Ljava/util/concurrent/Callable;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v2}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final g7(Lr4/og0;I)Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            "I)",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/l10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lr4/og0;->t:Lr4/br2;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lr4/br2;->p:I

    if-eqz v1, :cond_3

    iget v0, v0, Lr4/br2;->q:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v0

    iget-object v1, p0, Lr4/az1;->a:Landroid/content/Context;

    invoke-static {}, Lr4/im0;->X0()Lr4/im0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr4/u90;->a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v0

    iget-object v1, p0, Lr4/az1;->k:Lr4/ux0;

    invoke-interface {v1, p1, p2}, Lr4/ux0;->a(Lr4/og0;I)Lr4/xg2;

    move-result-object p2

    invoke-virtual {p2}, Lr4/xg2;->c()Lr4/mt2;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lr4/az1;->k7(Lr4/og0;Lr4/mt2;Lr4/xg2;)Lr4/h83;

    move-result-object p2

    invoke-static {p2, v1, v0}, Lr4/az1;->l7(Lr4/h83;Lr4/mt2;Lr4/ea0;)Lr4/h83;

    move-result-object v0

    sget-object v2, Lr4/gt2;->I:Lr4/gt2;

    const/4 v3, 0x2

    new-array v3, v3, [Lr4/h83;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lr4/et2;->f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;

    move-result-object v1

    new-instance v2, Lr4/sy1;

    invoke-direct {v2, p0, v0, p2, p1}, Lr4/sy1;-><init>(Lr4/az1;Lr4/h83;Lr4/h83;Lr4/og0;)V

    invoke-virtual {v1, v2}, Lr4/us2;->a(Ljava/util/concurrent/Callable;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final h7(Ljava/lang/String;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/l10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lr4/vy1;

    invoke-direct {v0, p0}, Lr4/vy1;-><init>(Lr4/az1;)V

    sget-object v1, Lr4/l10;->d:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lr4/az1;->o7(Ljava/lang/String;)Lr4/xy1;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lr4/az1;->p7(Ljava/lang/String;)Lr4/xy1;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic i()V
    .locals 2

    iget-object v0, p0, Lr4/az1;->d:Lr4/zg0;

    invoke-virtual {v0}, Lr4/zg0;->a()Lr4/h83;

    move-result-object v0

    const-string v1, "persistFlags"

    invoke-static {v0, v1}, Lr4/tm0;->a(Lr4/h83;Ljava/lang/String;)V

    return-void
.end method

.method public final i7(Lr4/og0;I)Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            "I)",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v0

    iget-object v1, p0, Lr4/az1;->a:Landroid/content/Context;

    invoke-static {}, Lr4/im0;->X0()Lr4/im0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr4/u90;->a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v0

    sget-object v1, Lr4/q10;->a:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lr4/az1;->k:Lr4/ux0;

    invoke-interface {v1, p1, p2}, Lr4/ux0;->a(Lr4/og0;I)Lr4/xg2;

    move-result-object p2

    invoke-virtual {p2}, Lr4/xg2;->b()Lr4/ig2;

    move-result-object v1

    sget-object v2, Lr4/ba0;->b:Lr4/y90;

    sget-object v3, Lr4/ba0;->c:Lr4/v90;

    const-string v4, "google.afma.request.getSignals"

    invoke-virtual {v0, v4, v2, v3}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    move-result-object v0

    invoke-virtual {p2}, Lr4/xg2;->c()Lr4/mt2;

    move-result-object p2

    sget-object v2, Lr4/gt2;->v:Lr4/gt2;

    iget-object p1, p1, Lr4/og0;->a:Landroid/os/Bundle;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    new-instance p2, Lr4/ty1;

    invoke-direct {p2, v1}, Lr4/ty1;-><init>(Lr4/ig2;)V

    invoke-virtual {p1, p2}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    sget-object p2, Lr4/gt2;->w:Lr4/gt2;

    invoke-virtual {p1, p2}, Lr4/dt2;->j(Ljava/lang/Object;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j7(Lr4/h83;Lr4/h83;Lr4/og0;)Ljava/io/InputStream;
    .locals 2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/rg0;

    invoke-virtual {v0}, Lr4/rg0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iget-object p3, p3, Lr4/og0;->s:Ljava/lang/String;

    new-instance v1, Lr4/xy1;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/rg0;

    invoke-direct {v1, p1, p2, p3, v0}, Lr4/xy1;-><init>(Lr4/rg0;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lr4/az1;->n7(Lr4/xy1;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final k4(Lr4/og0;Lr4/kg0;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr4/az1;->g7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lr4/az1;->m7(Lr4/h83;Lr4/kg0;)V

    return-void
.end method

.method public final m7(Lr4/h83;Lr4/kg0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Ljava/io/InputStream;",
            ">;",
            "Lr4/kg0;",
            ")V"
        }
    .end annotation

    new-instance v0, Lr4/uy1;

    invoke-direct {v0, p0}, Lr4/uy1;-><init>(Lr4/az1;)V

    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {p1, v0, v1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance v0, Lr4/wy1;

    invoke-direct {v0, p0, p2}, Lr4/wy1;-><init>(Lr4/az1;Lr4/kg0;)V

    sget-object p2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, v0, p2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final declared-synchronized n7(Lr4/xy1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/az1;->q()V

    iget-object v0, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o7(Ljava/lang/String;)Lr4/xy1;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/xy1;

    iget-object v2, v1, Lr4/xy1;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized p7(Ljava/lang/String;)Lr4/xy1;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/xy1;

    iget-object v2, v1, Lr4/xy1;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized q()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/l10;->c:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lr4/az1;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final t5(Lr4/og0;Lr4/kg0;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr4/az1;->f7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lr4/az1;->m7(Lr4/h83;Lr4/kg0;)V

    new-instance p2, Lr4/ry1;

    invoke-direct {p2, p0}, Lr4/ry1;-><init>(Lr4/az1;)V

    iget-object v0, p0, Lr4/az1;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final w6(Lr4/og0;Lr4/kg0;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr4/az1;->i7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lr4/az1;->m7(Lr4/h83;Lr4/kg0;)V

    return-void
.end method
