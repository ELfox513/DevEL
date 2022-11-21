.class public final Lr4/an1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/hp2;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/rp1;

.field public final d:Lr4/lo1;

.field public final e:Landroid/content/Context;

.field public final f:Lr4/ls1;

.field public final g:Lr4/xt2;

.field public final h:Lr4/pu2;

.field public final i:Lr4/c12;


# direct methods
.method public constructor <init>(Lr4/hp2;Ljava/util/concurrent/Executor;Lr4/rp1;Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/pu2;Lr4/c12;Lr4/lo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/an1;->a:Lr4/hp2;

    iput-object p2, p0, Lr4/an1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/an1;->c:Lr4/rp1;

    iput-object p4, p0, Lr4/an1;->e:Landroid/content/Context;

    iput-object p5, p0, Lr4/an1;->f:Lr4/ls1;

    iput-object p6, p0, Lr4/an1;->g:Lr4/xt2;

    iput-object p7, p0, Lr4/an1;->h:Lr4/pu2;

    iput-object p8, p0, Lr4/an1;->i:Lr4/c12;

    iput-object p9, p0, Lr4/an1;->d:Lr4/lo1;

    return-void
.end method

.method public static final i(Lr4/cs0;)V
    .locals 2

    sget-object v0, Lr4/t50;->h:Lr4/u50;

    const-string v1, "/videoClicked"

    invoke-interface {p0, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    invoke-interface {p0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lr4/st0;->i0(Z)V

    sget-object v0, Lr4/rz;->k2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/t50;->s:Lr4/u50;

    const-string v1, "/getNativeAdViewSignals"

    invoke-interface {p0, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    :cond_0
    sget-object v0, Lr4/t50;->t:Lr4/u50;

    const-string v1, "/getNativeClickMeta"

    invoke-interface {p0, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/qm1;

    invoke-direct {v1, p0}, Lr4/qm1;-><init>(Lr4/an1;)V

    iget-object v2, p0, Lr4/an1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/om1;

    invoke-direct {v1, p0, p1}, Lr4/om1;-><init>(Lr4/an1;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lr4/an1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lr4/no2;Lr4/so2;Lr4/yt;)Lr4/h83;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lr4/no2;",
            "Lr4/so2;",
            "Lr4/yt;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    new-instance v8, Lr4/pm1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lr4/pm1;-><init>(Lr4/an1;Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/an1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v8, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object p1, p0, Lr4/an1;->c:Lr4/rp1;

    invoke-static {}, Lr4/yt;->Y0()Lr4/yt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object p1

    invoke-static {p1}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v0

    invoke-virtual {p0, p1}, Lr4/an1;->h(Lr4/cs0;)V

    invoke-interface {p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v1

    new-instance v2, Lr4/rm1;

    invoke-direct {v2, v0}, Lr4/rm1;-><init>(Lr4/um0;)V

    invoke-interface {v1, v2}, Lr4/st0;->V(Lr4/rt0;)V

    sget-object v1, Lr4/rz;->j2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic d(Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lr4/h83;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/an1;->c:Lr4/rp1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v1

    invoke-static {v1}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v2

    iget-object v3, v0, Lr4/an1;->a:Lr4/hp2;

    iget-object v3, v3, Lr4/hp2;->b:Lr4/s70;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lr4/an1;->h(Lr4/cs0;)V

    invoke-static {}, Lr4/vt0;->e()Lr4/vt0;

    move-result-object v3

    invoke-interface {v1, v3}, Lr4/cs0;->u0(Lr4/vt0;)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lr4/an1;->d:Lr4/lo1;

    invoke-virtual {v3}, Lr4/lo1;->b()Lr4/io1;

    move-result-object v10

    move-object v6, v10

    move-object v8, v10

    move-object/from16 v21, v10

    move-object v9, v10

    move-object v7, v10

    invoke-interface {v1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v5

    new-instance v3, Lz2/b;

    move-object v13, v3

    iget-object v11, v0, Lr4/an1;->e:Landroid/content/Context;

    invoke-direct {v3, v11, v4, v4}, Lz2/b;-><init>(Landroid/content/Context;Lr4/ej0;Lr4/bg0;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v3, v0, Lr4/an1;->i:Lr4/c12;

    move-object/from16 v16, v3

    iget-object v3, v0, Lr4/an1;->h:Lr4/pu2;

    move-object/from16 v17, v3

    iget-object v3, v0, Lr4/an1;->f:Lr4/ls1;

    move-object/from16 v18, v3

    iget-object v3, v0, Lr4/an1;->g:Lr4/xt2;

    move-object/from16 v19, v3

    const/16 v20, 0x0

    invoke-interface/range {v5 .. v21}, Lr4/st0;->d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V

    invoke-static {v1}, Lr4/an1;->i(Lr4/cs0;)V

    :goto_0
    invoke-interface {v1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v3

    new-instance v5, Lr4/sm1;

    invoke-direct {v5, v0, v1, v2}, Lr4/sm1;-><init>(Lr4/an1;Lr4/cs0;Lr4/um0;)V

    invoke-interface {v3, v5}, Lr4/st0;->s0(Lr4/qt0;)V

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    invoke-interface {v1, v3, v5, v4}, Lr4/cs0;->c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final synthetic e(Lr4/cs0;Lr4/um0;Z)V
    .locals 1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object p3, p3, Lr4/hp2;->a:Lr4/xy;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p1

    iget-object p3, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object p3, p3, Lr4/hp2;->a:Lr4/xy;

    invoke-virtual {p1, p3}, Lr4/at0;->g7(Lr4/xy;)V

    :cond_0
    invoke-virtual {p2}, Lr4/um0;->h()V

    return-void

    :cond_1
    new-instance p1, Lr4/j52;

    const/4 p3, 0x1

    const-string v0, "Html video Web View failed to load."

    invoke-direct {p1, p3, v0}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic f(Lorg/json/JSONObject;Lr4/cs0;)Lr4/h83;
    .locals 3

    invoke-static {p2}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v0

    iget-object v1, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->b:Lr4/s70;

    if-eqz v1, :cond_0

    invoke-static {}, Lr4/vt0;->e()Lr4/vt0;

    move-result-object v1

    invoke-interface {p2, v1}, Lr4/cs0;->u0(Lr4/vt0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/vt0;->d()Lr4/vt0;

    move-result-object v1

    invoke-interface {p2, v1}, Lr4/cs0;->u0(Lr4/vt0;)V

    :goto_0
    invoke-interface {p2}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v1

    new-instance v2, Lr4/tm1;

    invoke-direct {v2, p0, p2, v0}, Lr4/tm1;-><init>(Lr4/an1;Lr4/cs0;Lr4/um0;)V

    invoke-interface {v1, v2}, Lr4/st0;->s0(Lr4/qt0;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    invoke-interface {p2, v1, p1}, Lr4/s80;->K0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final synthetic g(Lr4/cs0;Lr4/um0;Z)V
    .locals 0

    iget-object p3, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object p3, p3, Lr4/hp2;->a:Lr4/xy;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object p1

    iget-object p3, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object p3, p3, Lr4/hp2;->a:Lr4/xy;

    invoke-virtual {p1, p3}, Lr4/at0;->g7(Lr4/xy;)V

    :cond_0
    invoke-virtual {p2}, Lr4/um0;->h()V

    return-void
.end method

.method public final h(Lr4/cs0;)V
    .locals 8

    invoke-static {p1}, Lr4/an1;->i(Lr4/cs0;)V

    sget-object v0, Lr4/t50;->l:Lr4/u50;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    sget-object v0, Lr4/t50;->m:Lr4/u50;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    new-instance v0, Lr4/rq0;

    invoke-direct {v0}, Lr4/rq0;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    sget-object v0, Lr4/t50;->p:Lr4/u50;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    sget-object v0, Lr4/t50;->n:Lr4/u50;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    sget-object v0, Lr4/t50;->g:Lr4/u50;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/t50;->b(Lr4/cf1;)Lr4/u50;

    move-result-object v0

    const-string v1, "/click"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    iget-object v0, p0, Lr4/an1;->a:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->b:Lr4/s70;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lr4/st0;->r0(Z)V

    new-instance v0, Lr4/g60;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lr4/g60;-><init>(Lz2/b;Lr4/zd0;Lr4/c12;Lr4/ls1;Lr4/xt2;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/st0;->r0(Z)V

    :goto_0
    invoke-static {}, Lz2/t;->a()Lr4/ik0;

    move-result-object v0

    invoke-interface {p1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ik0;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lr4/a60;

    invoke-interface {p1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/a60;-><init>(Landroid/content/Context;)V

    const-string v1, "/logScionEvent"

    invoke-interface {p1, v1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    :cond_1
    return-void
.end method
