.class public final Lr4/g74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/f74;


# instance fields
.field public final a:Lr4/d04;

.field public final b:Lr4/d14;

.field public final c:Lr4/i74;

.field public final d:Lr4/e5;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lr4/d04;Lr4/d14;Lr4/i74;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g74;->a:Lr4/d04;

    iput-object p2, p0, Lr4/g74;->b:Lr4/d14;

    iput-object p3, p0, Lr4/g74;->c:Lr4/i74;

    iget p1, p3, Lr4/i74;->b:I

    iget p2, p3, Lr4/i74;->e:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lr4/i74;->d:I

    if-ne p2, p1, :cond_0

    iget p2, p3, Lr4/i74;->c:I

    mul-int p2, p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lr4/g74;->e:I

    new-instance p2, Lr4/c5;

    invoke-direct {p2}, Lr4/c5;-><init>()V

    invoke-virtual {p2, p4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {p2, v0}, Lr4/c5;->i(I)Lr4/c5;

    invoke-virtual {p2, v0}, Lr4/c5;->j(I)Lr4/c5;

    invoke-virtual {p2, p1}, Lr4/c5;->o(I)Lr4/c5;

    iget p1, p3, Lr4/i74;->b:I

    invoke-virtual {p2, p1}, Lr4/c5;->B(I)Lr4/c5;

    iget p1, p3, Lr4/i74;->c:I

    invoke-virtual {p2, p1}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {p2, p5}, Lr4/c5;->D(I)Lr4/c5;

    invoke-virtual {p2}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iput-object p1, p0, Lr4/g74;->d:Lr4/e5;

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x32

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Expected block size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final V(J)V
    .locals 0

    iput-wide p1, p0, Lr4/g74;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lr4/g74;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/g74;->h:J

    return-void
.end method

.method public final a(IJ)V
    .locals 9

    iget-object v0, p0, Lr4/g74;->a:Lr4/d04;

    new-instance v8, Lr4/l74;

    iget-object v2, p0, Lr4/g74;->c:Lr4/i74;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lr4/l74;-><init>(Lr4/i74;IJJ)V

    invoke-interface {v0, v8}, Lr4/d04;->j(Lr4/z04;)V

    iget-object p1, p0, Lr4/g74;->b:Lr4/d14;

    iget-object p2, p0, Lr4/g74;->d:Lr4/e5;

    invoke-interface {p1, p2}, Lr4/d14;->f(Lr4/e5;)V

    return-void
.end method

.method public final b(Lr4/b04;J)Z
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    iget v6, v0, Lr4/g74;->g:I

    iget v7, v0, Lr4/g74;->e:I

    if-ge v6, v7, :cond_1

    sub-int/2addr v7, v6

    int-to-long v6, v7

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lr4/g74;->b:Lr4/d14;

    long-to-int v7, v6

    move-object/from16 v6, p1

    invoke-static {v8, v6, v7, v3}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    move-wide v1, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Lr4/g74;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Lr4/g74;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lr4/g74;->c:Lr4/i74;

    iget v7, v6, Lr4/i74;->d:I

    iget v8, v0, Lr4/g74;->g:I

    div-int/2addr v8, v7

    if-lez v8, :cond_2

    iget-wide v9, v0, Lr4/g74;->f:J

    iget-wide v11, v0, Lr4/g74;->h:J

    iget v6, v6, Lr4/i74;->c:I

    const-wide/32 v13, 0xf4240

    int-to-long v3, v6

    move-wide v15, v3

    invoke-static/range {v11 .. v16}, Lr4/lc;->h(JJJ)J

    move-result-wide v3

    mul-int v21, v8, v7

    iget v5, v0, Lr4/g74;->g:I

    sub-int v5, v5, v21

    iget-object v6, v0, Lr4/g74;->b:Lr4/d14;

    add-long v18, v9, v3

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v6

    move/from16 v22, v5

    invoke-interface/range {v17 .. v23}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v3, v0, Lr4/g74;->h:J

    int-to-long v6, v8

    add-long/2addr v3, v6

    iput-wide v3, v0, Lr4/g74;->h:J

    iput v5, v0, Lr4/g74;->g:I

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    move-wide v3, v4

    :goto_1
    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
