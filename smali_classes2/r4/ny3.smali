.class public final Lr4/ny3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/zx3;

.field public final b:Lr4/jy3;

.field public final c:Lr4/my3;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/zx3;

    invoke-direct {v0}, Lr4/zx3;-><init>()V

    iput-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lr4/lc;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lr4/ly3;->c(Landroid/content/Context;)Lr4/jy3;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {p1}, Lr4/ky3;->c(Landroid/content/Context;)Lr4/jy3;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    iput-object v1, p0, Lr4/ny3;->b:Lr4/jy3;

    if-eqz v1, :cond_3

    invoke-static {}, Lr4/my3;->a()Lr4/my3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lr4/ny3;->c:Lr4/my3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/ny3;->k:J

    iput-wide v0, p0, Lr4/ny3;->l:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lr4/ny3;->f:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lr4/ny3;->i:F

    const/4 p1, 0x0

    iput p1, p0, Lr4/ny3;->j:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lr4/ny3;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lr4/ny3;->j:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr4/ny3;->o(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/ny3;->b:Lr4/jy3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ny3;->c:Lr4/my3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lr4/my3;->b()V

    iget-object v0, p0, Lr4/ny3;->b:Lr4/jy3;

    new-instance v1, Lr4/fy3;

    invoke-direct {v1, p0}, Lr4/fy3;-><init>(Lr4/ny3;)V

    invoke-interface {v0, v1}, Lr4/jy3;->b(Lr4/iy3;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ny3;->d:Z

    invoke-virtual {p0}, Lr4/ny3;->m()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/ny3;->o(Z)V

    return-void
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 2

    instance-of v0, p1, Lr4/xx3;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lr4/ny3;->e:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lr4/ny3;->p()V

    iput-object p1, p0, Lr4/ny3;->e:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Lr4/ny3;->o(Z)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lr4/ny3;->m()V

    return-void
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lr4/ny3;->i:F

    invoke-virtual {p0}, Lr4/ny3;->m()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr4/ny3;->o(Z)V

    return-void
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Lr4/ny3;->f:F

    iget-object p1, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {p1}, Lr4/zx3;->a()V

    invoke-virtual {p0}, Lr4/ny3;->n()V

    return-void
.end method

.method public final h(J)V
    .locals 5

    iget-wide v0, p0, Lr4/ny3;->n:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lr4/ny3;->p:J

    iget-wide v0, p0, Lr4/ny3;->o:J

    iput-wide v0, p0, Lr4/ny3;->q:J

    :cond_0
    iget-wide v0, p0, Lr4/ny3;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr4/ny3;->m:J

    iget-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lr4/zx3;->b(J)V

    invoke-virtual {p0}, Lr4/ny3;->n()V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ny3;->d:Z

    invoke-virtual {p0}, Lr4/ny3;->p()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lr4/ny3;->b:Lr4/jy3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/jy3;->a()V

    iget-object v0, p0, Lr4/ny3;->c:Lr4/my3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lr4/my3;->c()V

    :cond_0
    return-void
.end method

.method public final k(J)J
    .locals 10

    iget-wide v0, p0, Lr4/ny3;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v0}, Lr4/zx3;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v0}, Lr4/zx3;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/ny3;->q:J

    iget-wide v4, p0, Lr4/ny3;->m:J

    iget-wide v6, p0, Lr4/ny3;->p:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    long-to-float v0, v0

    iget v1, p0, Lr4/ny3;->i:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x1312d00

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr4/ny3;->m()V

    :cond_1
    :goto_0
    iget-wide v0, p0, Lr4/ny3;->m:J

    iput-wide v0, p0, Lr4/ny3;->n:J

    iput-wide p1, p0, Lr4/ny3;->o:J

    iget-object v0, p0, Lr4/ny3;->c:Lr4/my3;

    if-eqz v0, :cond_6

    iget-wide v1, p0, Lr4/ny3;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v0, v0, Lr4/my3;->a:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_3

    return-wide p1

    :cond_3
    iget-wide v2, p0, Lr4/ny3;->k:J

    sub-long v4, p1, v0

    div-long/2addr v4, v2

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_4

    sub-long v2, v0, v2

    goto :goto_1

    :cond_4
    add-long/2addr v2, v0

    move-wide v8, v0

    move-wide v0, v2

    move-wide v2, v8

    :goto_1
    sub-long v4, v0, p1

    sub-long/2addr p1, v2

    cmp-long v6, v4, p1

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    move-wide v0, v2

    :goto_2
    iget-wide p1, p0, Lr4/ny3;->l:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_6
    :goto_3
    return-wide p1
.end method

.method public final bridge synthetic l(Landroid/view/Display;)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lr4/ny3;->k:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lr4/ny3;->l:J

    return-void

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/ny3;->k:J

    iput-wide v0, p0, Lr4/ny3;->l:J

    return-void
.end method

.method public final m()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/ny3;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/ny3;->p:J

    iput-wide v0, p0, Lr4/ny3;->n:J

    return-void
.end method

.method public final n()V
    .locals 9

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lr4/ny3;->e:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v0}, Lr4/zx3;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v0}, Lr4/zx3;->g()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lr4/ny3;->f:F

    :goto_0
    iget v2, p0, Lr4/ny3;->g:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_4

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v1, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v1}, Lr4/zx3;->c()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v1}, Lr4/zx3;->e()J

    move-result-wide v5

    const-wide v7, 0x12a05f200L

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    const v2, 0x3ca3d70a    # 0.02f

    :cond_3
    iget v1, p0, Lr4/ny3;->g:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    goto :goto_1

    :cond_4
    cmpl-float v2, v0, v5

    if-nez v2, :cond_7

    iget-object v2, p0, Lr4/ny3;->a:Lr4/zx3;

    invoke-virtual {v2}, Lr4/zx3;->d()I

    move-result v2

    if-lt v2, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    iput v0, p0, Lr4/ny3;->g:F

    invoke-virtual {p0, v4}, Lr4/ny3;->o(Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final o(Z)V
    .locals 4

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lr4/ny3;->e:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Lr4/ny3;->j:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lr4/ny3;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lr4/ny3;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    iget v2, p0, Lr4/ny3;->i:F

    mul-float v2, v2, v1

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lr4/ny3;->h:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput v2, p0, Lr4/ny3;->h:F

    invoke-static {v0, v2}, Lr4/hy3;->a(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lr4/ny3;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lr4/ny3;->j:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Lr4/ny3;->h:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lr4/ny3;->h:F

    invoke-static {v0, v2}, Lr4/hy3;->a(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method
