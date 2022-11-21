.class public final Lr4/ff2;
.super Lr4/f53;
.source "SourceFile"

# interfaces
.implements Lr4/gb;


# instance fields
.field public final M0:Landroid/content/Context;

.field public final N0:Lr4/vl1;

.field public final O0:Lr4/dt1;

.field public P0:I

.field public Q0:Z

.field public R0:Lr4/e5;

.field public S0:J

.field public T0:Z

.field public U0:Z

.field public V0:Z

.field public W0:Lr4/f7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/c13;Lr4/u73;ZLandroid/os/Handler;Lr4/wm1;Lr4/dt1;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lr4/f53;-><init>(ILr4/c13;Lr4/u73;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/ff2;->M0:Landroid/content/Context;

    iput-object p7, p0, Lr4/ff2;->O0:Lr4/dt1;

    new-instance p1, Lr4/vl1;

    invoke-direct {p1, p5, p6}, Lr4/vl1;-><init>(Landroid/os/Handler;Lr4/wm1;)V

    iput-object p1, p0, Lr4/ff2;->N0:Lr4/vl1;

    new-instance p1, Lr4/dd2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lr4/dd2;-><init>(Lr4/ff2;Lr4/ee2;)V

    invoke-interface {p7, p1}, Lr4/dt1;->m(Lr4/aq1;)V

    return-void
.end method

.method public static synthetic I0(Lr4/ff2;)Lr4/vl1;
    .locals 0

    iget-object p0, p0, Lr4/ff2;->N0:Lr4/vl1;

    return-object p0
.end method

.method public static synthetic L0(Lr4/ff2;)Lr4/f7;
    .locals 0

    iget-object p0, p0, Lr4/ff2;->W0:Lr4/f7;

    return-object p0
.end method


# virtual methods
.method public final A0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ff2;->N0:Lr4/vl1;

    invoke-virtual {v0, p1}, Lr4/vl1;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final B()J
    .locals 2

    invoke-virtual {p0}, Lr4/c3;->F0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/ff2;->K0()V

    :cond_0
    iget-wide v0, p0, Lr4/ff2;->S0:J

    return-wide v0
.end method

.method public final B0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr4/ff2;->N0:Lr4/vl1;

    invoke-virtual {v0, p1}, Lr4/vl1;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final C0(Lr4/f5;)Lr4/iq;
    .locals 2

    invoke-super {p0, p1}, Lr4/f53;->C0(Lr4/f5;)Lr4/iq;

    move-result-object v0

    iget-object v1, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object p1, p1, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {v1, p1, v0}, Lr4/vl1;->c(Lr4/e5;Lr4/iq;)V

    return-object v0
.end method

.method public final D0(Lr4/e5;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Lr4/ff2;->R0:Lr4/e5;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lr4/f53;->j0()Lr4/rn3;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lr4/e5;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lr4/e5;->A:I

    goto :goto_0

    :cond_2
    sget v0, Lr4/lc;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr4/lc;->o(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lr4/e5;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lr4/e5;->A:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    :goto_0
    new-instance v4, Lr4/c5;

    invoke-direct {v4}, Lr4/c5;-><init>()V

    invoke-virtual {v4, v3}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v4, v0}, Lr4/c5;->D(I)Lr4/c5;

    iget v0, p1, Lr4/e5;->B:I

    invoke-virtual {v4, v0}, Lr4/c5;->E(I)Lr4/c5;

    iget v0, p1, Lr4/e5;->C:I

    invoke-virtual {v4, v0}, Lr4/c5;->F(I)Lr4/c5;

    const-string v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lr4/c5;->B(I)Lr4/c5;

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v4}, Lr4/c5;->I()Lr4/e5;

    move-result-object p2

    iget-boolean v0, p0, Lr4/ff2;->Q0:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lr4/e5;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Lr4/e5;->y:I

    if-ge v0, v3, :cond_6

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_1
    iget v3, p1, Lr4/e5;->y:I

    if-ge v0, v3, :cond_6

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    :goto_2
    :try_start_0
    iget-object p2, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p2, p1, v1, v2}, Lr4/dt1;->s(Lr4/e5;I[I)V
    :try_end_0
    .catch Lr4/xn1; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p1, Lr4/xn1;->a:Lr4/e5;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v1, v0}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final J0(Lr4/e33;Lr4/e5;)I
    .locals 1

    iget-object p1, p1, Lr4/e33;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lr4/lc;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lr4/ff2;->M0:Landroid/content/Context;

    invoke-static {p1}, Lr4/lc;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lr4/e5;->m:I

    return p1
.end method

.method public final K()Z
    .locals 1

    invoke-super {p0}, Lr4/f53;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K0()V
    .locals 5

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-virtual {p0}, Lr4/f53;->K()Z

    move-result v1

    invoke-interface {v0, v1}, Lr4/dt1;->b(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lr4/ff2;->U0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lr4/ff2;->S0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lr4/ff2;->S0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ff2;->U0:Z

    :cond_1
    return-void
.end method

.method public final M0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ff2;->U0:Z

    return-void
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lr4/f53;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p2, Lr4/f7;

    iput-object p2, p0, Lr4/ff2;->W0:Lr4/f7;

    return-void

    :pswitch_1
    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lr4/dt1;->a(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lr4/dt1;->p(Z)V

    return-void

    :cond_0
    check-cast p2, Lr4/zs3;

    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p1, p2}, Lr4/dt1;->c(Lr4/zs3;)V

    return-void

    :cond_1
    check-cast p2, Lr4/dg3;

    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p1, p2}, Lr4/dt1;->u(Lr4/dg3;)V

    return-void

    :cond_2
    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lr4/dt1;->k(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final c(Lr4/q6;)V
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0, p1}, Lr4/dt1;->e(Lr4/q6;)V

    return-void
.end method

.method public final j()Lr4/gb;
    .locals 0

    return-object p0
.end method

.method public final n(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lr4/f53;->n(ZZ)V

    iget-object p1, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object p2, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {p1, p2}, Lr4/vl1;->a(Lr4/gp;)V

    invoke-virtual {p0}, Lr4/c3;->h()Lr4/i7;

    return-void
.end method

.method public final o(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lr4/f53;->o(JZ)V

    iget-object p3, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p3}, Lr4/dt1;->n()V

    iput-wide p1, p0, Lr4/ff2;->S0:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/ff2;->T0:Z

    iput-boolean p1, p0, Lr4/ff2;->U0:Z

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->d()V

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Lr4/ff2;->K0()V

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->r()V

    return-void
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ff2;->V0:Z

    :try_start_0
    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lr4/f53;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object v1, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v0, v1}, Lr4/vl1;->g(Lr4/gp;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object v2, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v1, v2}, Lr4/vl1;->g(Lr4/gp;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lr4/f53;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object v2, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v1, v2}, Lr4/vl1;->g(Lr4/gp;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lr4/ff2;->N0:Lr4/vl1;

    iget-object v2, p0, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v1, v2}, Lr4/vl1;->g(Lr4/gp;)V

    throw v0
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lr4/f53;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lr4/ff2;->V0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lr4/ff2;->V0:Z

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->t()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lr4/ff2;->V0:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lr4/ff2;->V0:Z

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->t()V

    :goto_0
    throw v1
.end method

.method public final t0(Lr4/u73;Lr4/e5;)I
    .locals 8

    iget-object v0, p2, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v0}, Lr4/kb;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lr4/lc;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p2, Lr4/e5;->E:I

    invoke-static {p2}, Lr4/f53;->i0(Lr4/e5;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v4, p2}, Lr4/dt1;->o(Lr4/e5;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    invoke-static {}, Lr4/nk3;->a()Lr4/e33;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, v0, 0xc

    return p1

    :cond_3
    :goto_1
    iget-object v2, p2, Lr4/e5;->l:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v2, p2}, Lr4/dt1;->o(Lr4/e5;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    :goto_2
    iget-object v2, p0, Lr4/ff2;->O0:Lr4/dt1;

    iget v5, p2, Lr4/e5;->y:I

    iget v6, p2, Lr4/e5;->z:I

    const/4 v7, 0x2

    invoke-static {v7, v5, v6}, Lr4/lc;->n(III)Lr4/e5;

    move-result-object v5

    invoke-interface {v2, v5}, Lr4/dt1;->o(Lr4/e5;)Z

    move-result v2

    if-nez v2, :cond_6

    return v4

    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lr4/ff2;->u0(Lr4/u73;Lr4/e5;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    :cond_7
    if-nez v3, :cond_8

    return v7

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/e33;

    invoke-virtual {p1, p2}, Lr4/e33;->c(Lr4/e5;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    invoke-virtual {p1, p2}, Lr4/e33;->d(Lr4/e5;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x10

    :cond_9
    if-eq v4, v1, :cond_a

    const/4 p1, 0x3

    goto :goto_3

    :cond_a
    const/4 p1, 0x4

    :goto_3
    or-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method public final u0(Lr4/u73;Lr4/e5;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/u73;",
            "Lr4/e5;",
            "Z)",
            "Ljava/util/List<",
            "Lr4/e33;",
            ">;"
        }
    .end annotation

    iget-object p1, p2, Lr4/e5;->l:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p3, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p3, p2}, Lr4/dt1;->o(Lr4/e5;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lr4/nk3;->a()Lr4/e33;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    invoke-static {p1, p3, p3}, Lr4/nk3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lr4/nk3;->d(Ljava/util/List;Lr4/e5;)Ljava/util/List;

    move-result-object p2

    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    invoke-static {p2, p3, p3}, Lr4/nk3;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, p1

    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lr4/i4;)V
    .locals 5

    iget-boolean v0, p0, Lr4/ff2;->T0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lr4/qb4;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lr4/i4;->e:J

    iget-wide v2, p0, Lr4/ff2;->S0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lr4/i4;->e:J

    iput-wide v0, p0, Lr4/ff2;->S0:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/ff2;->T0:Z

    :cond_1
    return-void
.end method

.method public final v0(Lr4/e5;)Z
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0, p1}, Lr4/dt1;->o(Lr4/e5;)Z

    move-result p1

    return p1
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->g()V

    return-void
.end method

.method public final w0(Lr4/e33;Lr4/e5;Landroid/media/MediaCrypto;F)Lr4/b03;
    .locals 7

    invoke-virtual {p0}, Lr4/c3;->g()[Lr4/e5;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lr4/ff2;->J0(Lr4/e33;Lr4/e5;)I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p3, v4

    invoke-virtual {p1, p2, v5}, Lr4/e33;->e(Lr4/e5;Lr4/e5;)Lr4/iq;

    move-result-object v6

    iget v6, v6, Lr4/iq;->d:I

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1, v5}, Lr4/ff2;->J0(Lr4/e33;Lr4/e5;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v0, p0, Lr4/ff2;->P0:I

    iget-object p3, p1, Lr4/e33;->a:Ljava/lang/String;

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v4, "OMX.SEC.aac.dec"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lr4/lc;->c:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lr4/lc;->b:Ljava/lang/String;

    const-string v4, "zeroflte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "herolte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "heroqlte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lr4/ff2;->Q0:Z

    iget-object p3, p1, Lr4/e33;->c:Ljava/lang/String;

    iget v4, p0, Lr4/ff2;->P0:I

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p3, p2, Lr4/e5;->y:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p3, p2, Lr4/e5;->z:I

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p2, Lr4/e5;->n:Ljava/util/List;

    invoke-static {v5, p3}, Lr4/hb;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p3, "max-input-size"

    invoke-static {v5, p3, v4}, Lr4/hb;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 p3, 0x17

    if-lt v0, p3, :cond_6

    const-string v4, "priority"

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_6

    if-ne v0, p3, :cond_5

    sget-object p3, Lr4/lc;->d:Ljava/lang/String;

    const-string v2, "ZTE B2017G"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "AXON 7 mini"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    const-string p3, "operating-rate"

    invoke-virtual {v5, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_6
    const/16 p3, 0x1c

    if-gt v0, p3, :cond_7

    iget-object p3, p2, Lr4/e5;->l:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "ac4-is-sync"

    invoke-virtual {v5, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_7
    if-lt v0, v1, :cond_8

    iget-object p3, p0, Lr4/ff2;->O0:Lr4/dt1;

    iget p4, p2, Lr4/e5;->y:I

    iget v0, p2, Lr4/e5;->z:I

    const/4 v1, 0x4

    invoke-static {v1, p4, v0}, Lr4/lc;->n(III)Lr4/e5;

    move-result-object p4

    invoke-interface {p3, p4}, Lr4/dt1;->f(Lr4/e5;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_8

    const-string p3, "pcm-encoding"

    invoke-virtual {v5, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    iget-object p3, p1, Lr4/e33;->b:Ljava/lang/String;

    const-string p4, "audio/raw"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    iget-object p3, p2, Lr4/e5;->l:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    move-object p3, p2

    goto :goto_3

    :cond_9
    move-object p3, v0

    :goto_3
    iput-object p3, p0, Lr4/ff2;->R0:Lr4/e5;

    invoke-static {p1, v5, p2, v0}, Lr4/b03;->a(Lr4/e33;Landroid/media/MediaFormat;Lr4/e5;Landroid/media/MediaCrypto;)Lr4/b03;

    move-result-object p1

    return-object p1
.end method

.method public final x()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->j()V
    :try_end_0
    .catch Lr4/cs1; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v0, Lr4/cs1;->b:Lr4/e5;

    iget-boolean v2, v0, Lr4/cs1;->a:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0
.end method

.method public final x0(Lr4/e33;Lr4/e5;Lr4/e5;)Lr4/iq;
    .locals 9

    invoke-virtual {p1, p2, p3}, Lr4/e33;->e(Lr4/e5;Lr4/e5;)Lr4/iq;

    move-result-object v0

    iget v1, v0, Lr4/iq;->e:I

    invoke-virtual {p0, p1, p3}, Lr4/ff2;->J0(Lr4/e33;Lr4/e5;)I

    move-result v2

    iget v3, p0, Lr4/ff2;->P0:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    new-instance v8, Lr4/iq;

    iget-object v3, p1, Lr4/e33;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move v7, v1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Lr4/iq;->d:I

    move v6, v0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lr4/iq;-><init>(Ljava/lang/String;Lr4/e5;Lr4/e5;II)V

    return-object v8
.end method

.method public final y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lr4/ff2;->R0:Lr4/e5;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5, p7, p3}, Lr4/rn3;->h(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p5, p7, p3}, Lr4/rn3;->h(IZ)V

    :cond_1
    iget-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    iget p3, p1, Lr4/gp;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lr4/gp;->f:I

    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p1}, Lr4/dt1;->g()V

    return p2

    :cond_2
    :try_start_0
    iget-object p1, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {p1, p6, p10, p11, p9}, Lr4/dt1;->q(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lr4/yo1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lr4/cs1; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p5, p7, p3}, Lr4/rn3;->h(IZ)V

    :cond_3
    iget-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    iget p3, p1, Lr4/gp;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lr4/gp;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Lr4/cs1;->a:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    iget-object p2, p1, Lr4/yo1;->b:Lr4/e5;

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object p1

    throw p1
.end method

.method public final y0(FLr4/e5;[Lr4/e5;)F
    .locals 4

    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Lr4/e5;->z:I

    if-eq v3, v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float p2, p2, p1

    return p2
.end method

.method public final z()Lr4/q6;
    .locals 1

    iget-object v0, p0, Lr4/ff2;->O0:Lr4/dt1;

    invoke-interface {v0}, Lr4/dt1;->l()Lr4/q6;

    move-result-object v0

    return-object v0
.end method

.method public final z0(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lr4/ff2;->N0:Lr4/vl1;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lr4/vl1;->b(Ljava/lang/String;JJ)V

    return-void
.end method
