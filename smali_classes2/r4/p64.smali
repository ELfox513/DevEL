.class public final Lr4/p64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qz3;


# instance fields
.field public final a:Lr4/fc;

.field public final b:Lr4/xb;

.field public final c:I


# direct methods
.method public constructor <init>(ILr4/fc;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/p64;->c:I

    iput-object p2, p0, Lr4/p64;->a:Lr4/fc;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/p64;->b:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lr4/p64;->b:Lr4/xb;

    sget-object v1, Lr4/lc;->f:[B

    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lr4/xb;->j([BI)V

    return-void
.end method

.method public final b(Lr4/b04;J)Lr4/pz3;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x1b8a0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, v0, Lr4/p64;->b:Lr4/xb;

    invoke-virtual {v3, v4}, Lr4/xb;->i(I)V

    iget-object v3, v0, Lr4/p64;->b:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    move-object/from16 v5, p1

    check-cast v5, Lr4/vz3;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4, v6}, Lr4/vz3;->i([BIIZ)Z

    iget-object v3, v0, Lr4/p64;->b:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->m()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    :goto_0
    invoke-virtual {v3}, Lr4/xb;->l()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_5

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v13

    invoke-virtual {v3}, Lr4/xb;->o()I

    move-result v14

    invoke-static {v13, v14, v4}, Lr4/b74;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v5, v0, Lr4/p64;->c:I

    invoke-static {v3, v13, v5}, Lr4/b74;->b(Lr4/xb;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_4

    iget-object v15, v0, Lr4/p64;->a:Lr4/fc;

    invoke-virtual {v15, v5, v6}, Lr4/fc;->e(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_2

    cmp-long v3, v11, v7

    if-nez v3, :cond_1

    invoke-static {v5, v6, v1, v2}, Lr4/pz3;->d(JJ)Lr4/pz3;

    move-result-object v1

    goto :goto_3

    :cond_1
    add-long/2addr v1, v9

    goto :goto_1

    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v11, v9, p2

    if-lez v11, :cond_3

    int-to-long v3, v13

    add-long/2addr v1, v3

    :goto_1
    invoke-static {v1, v2}, Lr4/pz3;->f(J)Lr4/pz3;

    move-result-object v1

    goto :goto_3

    :cond_3
    int-to-long v9, v13

    move-wide v11, v5

    :cond_4
    invoke-virtual {v3, v14}, Lr4/xb;->p(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_5
    :goto_2
    cmp-long v3, v11, v7

    if-eqz v3, :cond_6

    add-long/2addr v1, v5

    invoke-static {v11, v12, v1, v2}, Lr4/pz3;->e(JJ)Lr4/pz3;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget-object v1, Lr4/pz3;->d:Lr4/pz3;

    :goto_3
    return-object v1
.end method
