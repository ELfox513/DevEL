.class public final Lr4/e62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dh1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/rp1;

.field public final c:Lr4/hp2;

.field public final d:Lr4/im0;

.field public final e:Lr4/no2;

.field public final f:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/vo1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/cs0;

.field public final h:Lr4/x50;

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/rp1;Lr4/hp2;Lr4/im0;Lr4/no2;Lr4/h83;Lr4/cs0;Lr4/x50;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/rp1;",
            "Lr4/hp2;",
            "Lr4/im0;",
            "Lr4/no2;",
            "Lr4/h83<",
            "Lr4/vo1;",
            ">;",
            "Lr4/cs0;",
            "Lr4/x50;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/e62;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/e62;->b:Lr4/rp1;

    iput-object p3, p0, Lr4/e62;->c:Lr4/hp2;

    iput-object p4, p0, Lr4/e62;->d:Lr4/im0;

    iput-object p5, p0, Lr4/e62;->e:Lr4/no2;

    iput-object p6, p0, Lr4/e62;->f:Lr4/h83;

    iput-object p7, p0, Lr4/e62;->g:Lr4/cs0;

    iput-object p8, p0, Lr4/e62;->h:Lr4/x50;

    iput-boolean p9, p0, Lr4/e62;->i:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lr4/w71;)V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lr4/e62;->f:Lr4/h83;

    invoke-static {v0}, Lr4/y73;->r(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/vo1;

    :try_start_0
    iget-object v2, v1, Lr4/e62;->e:Lr4/no2;

    iget-object v3, v1, Lr4/e62;->g:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->G0()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v2, v1, Lr4/e62;->g:Lr4/cs0;

    :goto_0
    move-object v11, v2

    goto :goto_2

    :cond_0
    sget-object v3, Lr4/rz;->y0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v1, Lr4/e62;->g:Lr4/cs0;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lr4/e62;->b:Lr4/rp1;

    iget-object v5, v1, Lr4/e62;->c:Lr4/hp2;

    iget-object v5, v5, Lr4/hp2;->e:Lr4/yt;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v3

    invoke-virtual {v0}, Lr4/vo1;->k()Lr4/lf1;

    move-result-object v5

    invoke-static {v3, v5}, Lr4/l60;->b(Lr4/cs0;Lr4/k60;)V

    new-instance v5, Lr4/wp1;

    invoke-direct {v5}, Lr4/wp1;-><init>()V

    iget-object v7, v1, Lr4/e62;->a:Landroid/content/Context;

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    invoke-virtual {v5, v7, v8}, Lr4/wp1;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Lr4/vo1;->l()Lr4/qp1;

    move-result-object v7

    iget-boolean v8, v1, Lr4/e62;->i:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lr4/e62;->h:Lr4/x50;

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    invoke-virtual {v7, v3, v4, v8}, Lr4/qp1;->i(Lr4/cs0;ZLr4/x50;)V

    invoke-interface {v3}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v7

    new-instance v8, Lr4/c62;

    invoke-direct {v8, v5, v3}, Lr4/c62;-><init>(Lr4/wp1;Lr4/cs0;)V

    invoke-interface {v7, v8}, Lr4/st0;->s0(Lr4/qt0;)V

    invoke-interface {v3}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v5

    invoke-static {v3}, Lr4/d62;->b(Lr4/cs0;)Lr4/rt0;

    move-result-object v7

    invoke-interface {v5, v7}, Lr4/st0;->V(Lr4/rt0;)V

    iget-object v2, v2, Lr4/no2;->s:Lr4/uo2;

    iget-object v5, v2, Lr4/uo2;->b:Ljava/lang/String;

    iget-object v2, v2, Lr4/uo2;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v2, v6}, Lr4/cs0;->c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lr4/ns0; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    :goto_2
    invoke-interface {v11, v4}, Lr4/cs0;->Y0(Z)V

    new-instance v2, Lz2/j;

    iget-boolean v3, v1, Lr4/e62;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v1, Lr4/e62;->h:Lr4/x50;

    invoke-virtual {v3, v5}, Lr4/x50;->c(Z)Z

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v3, v1, Lr4/e62;->a:Landroid/content/Context;

    invoke-static {v3}, Lb3/k2;->l(Landroid/content/Context;)Z

    move-result v14

    iget-boolean v3, v1, Lr4/e62;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lr4/e62;->h:Lr4/x50;

    invoke-virtual {v3}, Lr4/x50;->d()Z

    move-result v3

    move v15, v3

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    iget-boolean v3, v1, Lr4/e62;->i:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lr4/e62;->h:Lr4/x50;

    invoke-virtual {v3}, Lr4/x50;->e()F

    move-result v3

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_5
    iget-object v3, v1, Lr4/e62;->e:Lr4/no2;

    const/16 v17, -0x1

    iget-boolean v5, v3, Lr4/no2;->K:Z

    iget-boolean v3, v3, Lr4/no2;->L:Z

    move-object v12, v2

    move/from16 v18, p1

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lz2/j;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lr4/w71;->c()V

    :cond_6
    invoke-static {}, Lz2/t;->c()La3/o;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0}, Lr4/vo1;->j()Lr4/sg1;

    move-result-object v9

    iget-object v0, v1, Lr4/e62;->e:Lr4/no2;

    iget v12, v0, Lr4/no2;->M:I

    iget-object v13, v1, Lr4/e62;->d:Lr4/im0;

    iget-object v14, v0, Lr4/no2;->B:Ljava/lang/String;

    iget-object v0, v0, Lr4/no2;->s:Lr4/uo2;

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v5, v0, Lr4/uo2;->b:Ljava/lang/String;

    iget-object v0, v0, Lr4/uo2;->a:Ljava/lang/String;

    iget-object v6, v1, Lr4/e62;->c:Lr4/hp2;

    iget-object v6, v6, Lr4/hp2;->f:Ljava/lang/String;

    move-object v7, v3

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v19}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/gt;La3/q;La3/x;Lr4/cs0;ILr4/im0;Ljava/lang/String;Lz2/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/w71;)V

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, La3/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
