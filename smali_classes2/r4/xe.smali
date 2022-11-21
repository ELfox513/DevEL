.class public final Lr4/xe;
.super Lr4/mh;
.source "SourceFile"

# interfaces
.implements Lr4/zk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final Q:Lr4/fe;

.field public final R:Lr4/te;

.field public S:Z

.field public T:I

.field public U:I

.field public V:J

.field public W:Z


# direct methods
.method public constructor <init>(Lr4/oh;Lr4/mf;ZLandroid/os/Handler;Lr4/ge;)V
    .locals 1

    const/4 p2, 0x0

    new-array p2, p2, [Lr4/yd;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p3}, Lr4/mh;-><init>(ILr4/oh;Lr4/mf;Z)V

    new-instance p1, Lr4/te;

    new-instance p3, Lr4/ve;

    invoke-direct {p3, p0, v0}, Lr4/ve;-><init>(Lr4/xe;Lr4/we;)V

    invoke-direct {p1, v0, p2, p3}, Lr4/te;-><init>(Lr4/vd;[Lr4/yd;Lr4/ne;)V

    iput-object p1, p0, Lr4/xe;->R:Lr4/te;

    new-instance p1, Lr4/fe;

    invoke-direct {p1, p4, p5}, Lr4/fe;-><init>(Landroid/os/Handler;Lr4/ge;)V

    iput-object p1, p0, Lr4/xe;->Q:Lr4/fe;

    return-void
.end method

.method public static synthetic Y(Lr4/xe;)Lr4/fe;
    .locals 0

    iget-object p0, p0, Lr4/xe;->Q:Lr4/fe;

    return-object p0
.end method

.method public static synthetic Z(Lr4/xe;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/xe;->W:Z

    return p1
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->m()V

    return-void
.end method

.method public final B()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lr4/mh;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v0}, Lr4/gf;->a()V

    iget-object v0, p0, Lr4/xe;->Q:Lr4/fe;

    iget-object v1, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v0, v1}, Lr4/fe;->f(Lr4/gf;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1}, Lr4/gf;->a()V

    iget-object v1, p0, Lr4/xe;->Q:Lr4/fe;

    iget-object v2, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1, v2}, Lr4/fe;->f(Lr4/gf;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lr4/mh;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1}, Lr4/gf;->a()V

    iget-object v1, p0, Lr4/xe;->Q:Lr4/fe;

    iget-object v2, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1, v2}, Lr4/fe;->f(Lr4/gf;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1}, Lr4/gf;->a()V

    iget-object v1, p0, Lr4/xe;->Q:Lr4/fe;

    iget-object v2, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {v1, v2}, Lr4/fe;->f(Lr4/gf;)V

    throw v0
.end method

.method public final G()Z
    .locals 1

    invoke-super {p0}, Lr4/mh;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I(Lr4/oh;Lr4/id;)I
    .locals 5

    iget-object p1, p2, Lr4/id;->q:Ljava/lang/String;

    invoke-static {p1}, Lr4/al;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lr4/ll;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, v1}, Lr4/vh;->a(Ljava/lang/String;Z)Lr4/kh;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-lt v0, v2, :cond_4

    iget v0, p2, Lr4/id;->D:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lr4/kh;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget p2, p2, Lr4/id;->C:I

    if-eq p2, v2, :cond_4

    invoke-virtual {p1, p2}, Lr4/kh;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x3

    :cond_5
    or-int/lit8 p1, v3, 0x4

    or-int/2addr p1, v1

    return p1
.end method

.method public final J(Lr4/oh;Lr4/id;Z)Lr4/kh;
    .locals 0

    const/4 p3, 0x0

    invoke-super {p0, p1, p2, p3}, Lr4/mh;->J(Lr4/oh;Lr4/id;Z)Lr4/kh;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lr4/kh;Landroid/media/MediaCodec;Lr4/id;Landroid/media/MediaCrypto;)V
    .locals 3

    iget-object p1, p1, Lr4/kh;->a:Ljava/lang/String;

    sget p4, Lr4/ll;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge p4, v2, :cond_0

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr4/ll;->c:Ljava/lang/String;

    const-string p4, "samsung"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr4/ll;->b:Ljava/lang/String;

    const-string p4, "zeroflte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "heroqlte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lr4/xe;->S:Z

    invoke-virtual {p3}, Lr4/id;->B()Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final L(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lr4/xe;->Q:Lr4/fe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lr4/fe;->c(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final M(Lr4/id;)V
    .locals 2

    invoke-super {p0, p1}, Lr4/mh;->M(Lr4/id;)V

    iget-object v0, p0, Lr4/xe;->Q:Lr4/fe;

    invoke-virtual {v0, p1}, Lr4/fe;->d(Lr4/id;)V

    iget-object v0, p1, Lr4/id;->q:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lr4/id;->E:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lr4/xe;->T:I

    iget p1, p1, Lr4/id;->C:I

    iput p1, p0, Lr4/xe;->U:I

    return-void
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lr4/mh;->N()Z

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

.method public final O(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8

    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v2, "audio/raw"

    iget-boolean p2, p0, Lr4/xe;->S:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eqz p2, :cond_2

    if-ne p1, v1, :cond_2

    iget p1, p0, Lr4/xe;->U:I

    if-ge p1, v1, :cond_1

    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lr4/xe;->U:I

    if-ge p2, v0, :cond_0

    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v3, 0x6

    goto :goto_2

    :cond_2
    move v3, p1

    move-object v7, v0

    :goto_2
    :try_start_0
    iget-object v1, p0, Lr4/xe;->R:Lr4/te;

    iget v5, p0, Lr4/xe;->T:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lr4/te;->c(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lr4/le; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lr4/rc;->E()I

    move-result p2

    invoke-static {p1, p2}, Lr4/tc;->a(Ljava/lang/Exception;I)Lr4/tc;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p11, :cond_0

    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lr4/mh;->O:Lr4/gf;

    iget p3, p1, Lr4/gf;->e:I

    add-int/2addr p3, p2

    iput p3, p1, Lr4/gf;->e:I

    iget-object p1, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {p1}, Lr4/te;->e()V

    return p2

    :cond_0
    :try_start_0
    iget-object p3, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {p3, p6, p9, p10}, Lr4/te;->f(Ljava/nio/ByteBuffer;J)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lr4/mh;->O:Lr4/gf;

    iget p3, p1, Lr4/gf;->d:I

    add-int/2addr p3, p2

    iput p3, p1, Lr4/gf;->d:I
    :try_end_0
    .catch Lr4/me; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lr4/qe; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_1
    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lr4/rc;->E()I

    move-result p2

    invoke-static {p1, p2}, Lr4/tc;->a(Ljava/lang/Exception;I)Lr4/tc;

    move-result-object p1

    throw p1
.end method

.method public final Q()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->g()V
    :try_end_0
    .catch Lr4/qe; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lr4/rc;->E()I

    move-result v1

    invoke-static {v0, v1}, Lr4/tc;->a(Ljava/lang/Exception;I)Lr4/tc;

    move-result-object v0

    throw v0
.end method

.method public final e()Lr4/zk;
    .locals 0

    return-object p0
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lr4/xe;->R:Lr4/te;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lr4/te;->l(F)V

    return-void
.end method

.method public final o0()Lr4/md;
    .locals 1

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->k()Lr4/md;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Lr4/md;)Lr4/md;
    .locals 1

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0, p1}, Lr4/te;->j(Lr4/md;)Lr4/md;

    move-result-object p1

    return-object p1
.end method

.method public final r()J
    .locals 5

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {p0}, Lr4/mh;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Lr4/te;->b(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lr4/xe;->W:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lr4/xe;->V:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lr4/xe;->V:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/xe;->W:Z

    :cond_1
    iget-wide v0, p0, Lr4/xe;->V:J

    return-wide v0
.end method

.method public final w(Z)V
    .locals 1

    invoke-super {p0, p1}, Lr4/mh;->w(Z)V

    iget-object p1, p0, Lr4/xe;->Q:Lr4/fe;

    iget-object v0, p0, Lr4/mh;->O:Lr4/gf;

    invoke-virtual {p1, v0}, Lr4/fe;->b(Lr4/gf;)V

    invoke-virtual {p0}, Lr4/rc;->C()Lr4/pd;

    move-result-object p1

    iget p1, p1, Lr4/pd;->a:I

    return-void
.end method

.method public final y(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lr4/mh;->y(JZ)V

    iget-object p3, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {p3}, Lr4/te;->n()V

    iput-wide p1, p0, Lr4/xe;->V:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/xe;->W:Z

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lr4/xe;->R:Lr4/te;

    invoke-virtual {v0}, Lr4/te;->d()V

    return-void
.end method
