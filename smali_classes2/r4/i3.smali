.class public final Lr4/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/h5;


# instance fields
.field public final a:Lr4/qw3;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Lr4/qw3;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lr4/qw3;-><init>(ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v5, v2, v6, v4}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    invoke-static {v7, v1, v8, v3}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5, v8, v6}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {v7, v7, v1, v8}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v2, v2, v1, v4}, Lr4/i3;->j(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lr4/i3;->a:Lr4/qw3;

    const-wide/32 v0, 0xc350

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/i3;->b:J

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/i3;->c:J

    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/i3;->d:J

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/i3;->e:J

    const/high16 v0, 0xc80000

    iput v0, p0, Lr4/i3;->g:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/i3;->f:J

    return-void
.end method

.method public static j(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lr4/ja;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/i3;->i(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/i3;->i(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(JFZJ)Z
    .locals 3

    invoke-static {p1, p2, p3}, Lr4/lc;->k(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    iget-wide p3, p0, Lr4/i3;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lr4/i3;->d:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x2

    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_3

    cmp-long p5, p1, p3

    if-gez p5, :cond_3

    iget-object p1, p0, Lr4/i3;->a:Lr4/qw3;

    invoke-virtual {p1}, Lr4/qw3;->g()I

    move-result p1

    iget p2, p0, Lr4/i3;->g:I

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lr4/i3;->f:J

    return-wide v0
.end method

.method public final f()Lr4/qw3;
    .locals 1

    iget-object v0, p0, Lr4/i3;->a:Lr4/qw3;

    return-object v0
.end method

.method public final g(JJF)Z
    .locals 5

    iget-object p1, p0, Lr4/i3;->a:Lr4/qw3;

    invoke-virtual {p1}, Lr4/qw3;->g()I

    move-result p1

    iget p2, p0, Lr4/i3;->g:I

    iget-wide v0, p0, Lr4/i3;->b:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1, p5}, Lr4/lc;->j(JF)J

    move-result-wide v0

    iget-wide v2, p0, Lr4/i3;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/32 v2, 0x7a120

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 p5, 0x0

    cmp-long v4, p3, v0

    if-gez v4, :cond_2

    if-ge p1, p2, :cond_1

    const/4 p5, 0x1

    :cond_1
    iput-boolean p5, p0, Lr4/i3;->h:Z

    if-nez p5, :cond_4

    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lr4/i3;->c:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_3

    if-lt p1, p2, :cond_4

    :cond_3
    iput-boolean p5, p0, Lr4/i3;->h:Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lr4/i3;->h:Z

    return p1
.end method

.method public final h([Lr4/g7;Lr4/j44;[Lr4/hv3;)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/high16 v2, 0xc80000

    if-ge p2, v1, :cond_2

    aget-object v1, p3, p2

    if-eqz v1, :cond_1

    aget-object v1, p1, p2

    invoke-interface {v1}, Lr4/g7;->G()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/high16 v2, 0x7d00000

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lr4/i3;->g:I

    iget-object p2, p0, Lr4/i3;->a:Lr4/qw3;

    invoke-virtual {p2, p1}, Lr4/qw3;->b(I)V

    return-void
.end method

.method public final i(Z)V
    .locals 1

    const/high16 v0, 0xc80000

    iput v0, p0, Lr4/i3;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/i3;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/i3;->a:Lr4/qw3;

    invoke-virtual {p1}, Lr4/qw3;->a()V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/i3;->i(Z)V

    return-void
.end method
