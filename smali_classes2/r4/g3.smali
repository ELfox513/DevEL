.class public final Lr4/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:F

.field public j:F

.field public k:F

.field public l:J

.field public m:J

.field public n:J


# direct methods
.method public synthetic constructor <init>(FFJFJJFLr4/f3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lr4/g3;->a:J

    iput-wide p8, p0, Lr4/g3;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/g3;->c:J

    iput-wide p1, p0, Lr4/g3;->d:J

    iput-wide p1, p0, Lr4/g3;->f:J

    iput-wide p1, p0, Lr4/g3;->g:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lr4/g3;->j:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lr4/g3;->i:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lr4/g3;->k:F

    iput-wide p1, p0, Lr4/g3;->l:J

    iput-wide p1, p0, Lr4/g3;->e:J

    iput-wide p1, p0, Lr4/g3;->h:J

    iput-wide p1, p0, Lr4/g3;->m:J

    iput-wide p1, p0, Lr4/g3;->n:J

    return-void
.end method

.method public static g(JJF)J
    .locals 0

    long-to-float p0, p0

    const p1, 0x3f7fbe77    # 0.999f

    mul-float p0, p0, p1

    long-to-float p1, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final a(Lr4/r5;)V
    .locals 4

    iget-wide v0, p1, Lr4/r5;->a:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/g3;->c:J

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/g3;->f:J

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/g3;->g:J

    const p1, 0x3f7851ec    # 0.97f

    iput p1, p0, Lr4/g3;->j:F

    const p1, 0x3f83d70a    # 1.03f

    iput p1, p0, Lr4/g3;->i:F

    invoke-virtual {p0}, Lr4/g3;->f()V

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lr4/g3;->d:J

    invoke-virtual {p0}, Lr4/g3;->f()V

    return-void
.end method

.method public final c()V
    .locals 7

    iget-wide v0, p0, Lr4/g3;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lr4/g3;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lr4/g3;->h:J

    iget-wide v4, p0, Lr4/g3;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Lr4/g3;->h:J

    :cond_1
    iput-wide v2, p0, Lr4/g3;->l:J

    return-void
.end method

.method public final d(JJ)F
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lr4/g3;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-eqz v6, :cond_8

    sub-long v1, p1, p3

    iget-wide v6, v0, Lr4/g3;->m:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    iput-wide v1, v0, Lr4/g3;->m:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lr4/g3;->n:J

    goto :goto_0

    :cond_0
    const v8, 0x3f7fbe77    # 0.999f

    invoke-static {v6, v7, v1, v2, v8}, Lr4/g3;->g(JJF)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lr4/g3;->m:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v6, v0, Lr4/g3;->n:J

    invoke-static {v6, v7, v1, v2, v8}, Lr4/g3;->g(JJF)J

    move-result-wide v1

    iput-wide v1, v0, Lr4/g3;->n:J

    :goto_0
    iget-wide v1, v0, Lr4/g3;->l:J

    const-wide/16 v6, 0x3e8

    cmp-long v8, v1, v4

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lr4/g3;->l:J

    sub-long/2addr v1, v8

    cmp-long v8, v1, v6

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lr4/g3;->k:F

    return v1

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lr4/g3;->l:J

    iget-wide v1, v0, Lr4/g3;->m:J

    iget-wide v8, v0, Lr4/g3;->n:J

    const-wide/16 v10, 0x3

    mul-long v8, v8, v10

    add-long v14, v1, v8

    iget-wide v1, v0, Lr4/g3;->h:J

    const v8, 0x33d6bf95    # 1.0E-7f

    const/high16 v9, -0x40800000    # -1.0f

    cmp-long v10, v1, v14

    if-lez v10, :cond_5

    invoke-static {v6, v7}, Lr4/e3;->b(J)J

    move-result-wide v1

    iget v4, v0, Lr4/g3;->k:F

    long-to-float v1, v1

    iget v2, v0, Lr4/g3;->i:F

    const/4 v5, 0x3

    new-array v6, v5, [J

    const/4 v7, 0x0

    aput-wide v14, v6, v7

    iget-wide v10, v0, Lr4/g3;->e:J

    const/4 v7, 0x1

    aput-wide v10, v6, v7

    const/4 v10, 0x2

    iget-wide v11, v0, Lr4/g3;->h:J

    add-float/2addr v4, v9

    mul-float v4, v4, v1

    float-to-long v3, v4

    add-float/2addr v2, v9

    mul-float v2, v2, v1

    float-to-long v1, v2

    add-long/2addr v3, v1

    sub-long/2addr v11, v3

    aput-wide v11, v6, v10

    :goto_2
    if-ge v7, v5, :cond_4

    aget-wide v1, v6, v7

    cmp-long v3, v1, v14

    if-lez v3, :cond_3

    move-wide v14, v1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iput-wide v14, v0, Lr4/g3;->h:J

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    iget v2, v0, Lr4/g3;->k:F

    add-float/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    float-to-long v1, v1

    sub-long v10, p1, v1

    iget-wide v12, v0, Lr4/g3;->h:J

    invoke-static/range {v10 .. v15}, Lr4/lc;->d0(JJJ)J

    move-result-wide v14

    iput-wide v14, v0, Lr4/g3;->h:J

    iget-wide v1, v0, Lr4/g3;->g:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_6

    cmp-long v3, v14, v1

    if-lez v3, :cond_6

    iput-wide v1, v0, Lr4/g3;->h:J

    move-wide v14, v1

    :cond_6
    :goto_3
    sub-long v1, p1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, v0, Lr4/g3;->a:J

    cmp-long v7, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v7, :cond_7

    iput v3, v0, Lr4/g3;->k:F

    goto :goto_4

    :cond_7
    long-to-float v1, v1

    mul-float v1, v1, v8

    add-float/2addr v1, v3

    iget v2, v0, Lr4/g3;->j:F

    iget v3, v0, Lr4/g3;->i:F

    invoke-static {v1, v2, v3}, Lr4/lc;->e0(FFF)F

    move-result v3

    iput v3, v0, Lr4/g3;->k:F

    :goto_4
    return v3

    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lr4/g3;->h:J

    return-wide v0
.end method

.method public final f()V
    .locals 7

    iget-wide v0, p0, Lr4/g3;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lr4/g3;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lr4/g3;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lr4/g3;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lr4/g3;->e:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lr4/g3;->e:J

    iput-wide v0, p0, Lr4/g3;->h:J

    iput-wide v2, p0, Lr4/g3;->m:J

    iput-wide v2, p0, Lr4/g3;->n:J

    iput-wide v2, p0, Lr4/g3;->l:J

    return-void
.end method
