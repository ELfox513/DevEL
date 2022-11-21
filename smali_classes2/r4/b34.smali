.class public final Lr4/b34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a34;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>([J[JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b34;->a:[J

    iput-object p2, p0, Lr4/b34;->b:[J

    iput-wide p3, p0, Lr4/b34;->c:J

    iput-wide p5, p0, Lr4/b34;->d:J

    return-void
.end method

.method public static e(JJLr4/t04;Lr4/xb;)Lr4/b34;
    .locals 22

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lr4/xb;->s(I)V

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->D()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    :cond_0
    iget v6, v2, Lr4/t04;->d:I

    int-to-long v7, v4

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v9, v4

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    int-to-long v11, v6

    invoke-static/range {v7 .. v12}, Lr4/lc;->h(JJJ)J

    move-result-wide v16

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->w()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->w()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->w()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lr4/xb;->s(I)V

    iget v2, v2, Lr4/t04;->c:I

    int-to-long v9, v2

    add-long v9, p2, v9

    new-array v14, v4, [J

    new-array v15, v4, [J

    const/4 v2, 0x0

    move-wide/from16 v11, p2

    :goto_1
    if-ge v2, v4, :cond_6

    move/from16 v18, v6

    int-to-long v5, v2

    mul-long v5, v5, v16

    move-wide/from16 v20, v9

    int-to-long v8, v4

    div-long/2addr v5, v8

    aput-wide v5, v14, v2

    move-wide/from16 v5, v20

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v15, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->b()I

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->z()I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->w()I

    move-result v10

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Lr4/xb;->v()I

    move-result v10

    :goto_2
    mul-int v10, v10, v18

    int-to-long v8, v10

    add-long/2addr v11, v8

    add-int/lit8 v2, v2, 0x1

    move-wide v9, v5

    move/from16 v6, v18

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_1

    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    cmp-long v2, v0, v11

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v0, Lr4/b34;

    move-object v13, v0

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lr4/b34;-><init>([J[JJJ)V

    return-object v0
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 8

    iget-object v0, p0, Lr4/b34;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lr4/lc;->d([JJZZ)I

    move-result v0

    new-instance v2, Lr4/a14;

    iget-object v3, p0, Lr4/b34;->a:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lr4/b34;->b:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lr4/a14;-><init>(JJ)V

    iget-wide v3, v2, Lr4/a14;->a:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object p1, p0, Lr4/b34;->a:[J

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    new-instance p2, Lr4/a14;

    aget-wide v3, p1, v0

    iget-object p1, p0, Lr4/b34;->b:[J

    aget-wide v0, p1, v0

    invoke-direct {p2, v3, v4, v0, v1}, Lr4/a14;-><init>(JJ)V

    new-instance p1, Lr4/x04;

    invoke-direct {p1, v2, p2}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lr4/x04;

    invoke-direct {p1, v2, v2}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lr4/b34;->d:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(J)J
    .locals 3

    iget-object v0, p0, Lr4/b34;->a:[J

    iget-object v1, p0, Lr4/b34;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lr4/lc;->d([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lr4/b34;->c:J

    return-wide v0
.end method
