.class public final Lr4/n12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/e5;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[Lr4/ja1;


# direct methods
.method public constructor <init>(Lr4/e5;IIIIIIIZ[Lr4/ja1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n12;->a:Lr4/e5;

    iput p2, p0, Lr4/n12;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lr4/n12;->c:I

    iput p4, p0, Lr4/n12;->d:I

    iput p5, p0, Lr4/n12;->e:I

    iput p6, p0, Lr4/n12;->f:I

    iput p7, p0, Lr4/n12;->g:I

    iput-object p10, p0, Lr4/n12;->i:[Lr4/ja1;

    invoke-static {p5, p6, p7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Lr4/ja;->d(Z)V

    mul-int/lit8 p1, p2, 0x4

    const-wide/32 p5, 0x3d090

    invoke-virtual {p0, p5, p6}, Lr4/n12;->b(J)J

    move-result-wide p5

    long-to-int p3, p5

    mul-int p3, p3, p4

    const-wide/32 p5, 0xb71b0

    invoke-virtual {p0, p5, p6}, Lr4/n12;->b(J)J

    move-result-wide p5

    long-to-int p6, p5

    mul-int p6, p6, p4

    invoke-static {p2, p6}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p3, p2}, Lr4/lc;->c0(III)I

    move-result p1

    iput p1, p0, Lr4/n12;->h:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lr4/n12;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(J)J
    .locals 2

    iget v0, p0, Lr4/n12;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final c(ZLr4/dg3;I)Landroid/media/AudioTrack;
    .locals 10

    :try_start_0
    sget p1, Lr4/lc;->a:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget p1, p0, Lr4/n12;->e:I

    iget v0, p0, Lr4/n12;->f:I

    iget v2, p0, Lr4/n12;->g:I

    invoke-static {p1, v0, v2}, Lr4/bb2;->x(III)Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {p2}, Lr4/dg3;->a()Landroid/media/AudioAttributes;

    move-result-object p2

    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p2, p0, Lr4/n12;->h:I

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr4/m12;->a(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    new-instance p1, Landroid/media/AudioTrack;

    invoke-virtual {p2}, Lr4/dg3;->a()Landroid/media/AudioAttributes;

    move-result-object v3

    iget p2, p0, Lr4/n12;->e:I

    iget v0, p0, Lr4/n12;->f:I

    iget v2, p0, Lr4/n12;->g:I

    invoke-static {p2, v0, v2}, Lr4/bb2;->x(III)Landroid/media/AudioFormat;

    move-result-object v4

    iget v5, p0, Lr4/n12;->h:I

    const/4 v6, 0x1

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_0

    :cond_1
    iget p1, p2, Lr4/dg3;->a:I

    if-nez p3, :cond_2

    new-instance p1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lr4/n12;->e:I

    iget v5, p0, Lr4/n12;->f:I

    iget v6, p0, Lr4/n12;->g:I

    iget v7, p0, Lr4/n12;->h:I

    const/4 v8, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lr4/n12;->e:I

    iget v5, p0, Lr4/n12;->f:I

    iget v6, p0, Lr4/n12;->g:I

    iget v7, p0, Lr4/n12;->h:I

    const/4 v8, 0x1

    move-object v2, p1

    move v9, p3

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-ne v3, v1, :cond_3

    return-object p1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Lr4/yo1;

    iget v4, p0, Lr4/n12;->e:I

    iget v5, p0, Lr4/n12;->f:I

    iget v6, p0, Lr4/n12;->h:I

    iget-object v7, p0, Lr4/n12;->a:Lr4/e5;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lr4/yo1;-><init>(IIIILr4/e5;ZLjava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    move-object v7, p1

    new-instance p1, Lr4/yo1;

    const/4 v1, 0x0

    iget v2, p0, Lr4/n12;->e:I

    iget v3, p0, Lr4/n12;->f:I

    iget v4, p0, Lr4/n12;->h:I

    iget-object v5, p0, Lr4/n12;->a:Lr4/e5;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lr4/yo1;-><init>(IIIILr4/e5;ZLjava/lang/Exception;)V

    throw p1
.end method
