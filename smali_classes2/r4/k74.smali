.class public final Lr4/k74;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lr4/b04;)Lr4/i74;
    .locals 15

    new-instance v0, Lr4/xb;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    invoke-static {p0, v0}, Lr4/j74;->a(Lr4/b04;Lr4/xb;)Lr4/j74;

    move-result-object v2

    iget v2, v2, Lr4/j74;->a:I

    const/4 v3, 0x0

    const v4, 0x52494646

    if-eq v2, v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v2

    move-object v4, p0

    check-cast v4, Lr4/vz3;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5, v6}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v0, v6}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v2

    const v5, 0x57415645

    if-eq v2, v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported RIFF format: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-static {p0, v0}, Lr4/j74;->a(Lr4/b04;Lr4/xb;)Lr4/j74;

    move-result-object v2

    :goto_0
    iget v3, v2, Lr4/j74;->a:I

    const v5, 0x666d7420

    if-eq v3, v5, :cond_2

    iget-wide v2, v2, Lr4/j74;->b:J

    long-to-int v3, v2

    invoke-virtual {v4, v3, v6}, Lr4/vz3;->o(IZ)Z

    invoke-static {p0, v0}, Lr4/j74;->a(Lr4/b04;Lr4/xb;)Lr4/j74;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-wide v7, v2, Lr4/j74;->b:J

    const-wide/16 v9, 0x10

    cmp-long p0, v7, v9

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lr4/ja;->d(Z)V

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object p0

    invoke-virtual {v4, p0, v6, v1, v6}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v0, v6}, Lr4/xb;->p(I)V

    invoke-virtual {v0}, Lr4/xb;->x()I

    move-result v8

    invoke-virtual {v0}, Lr4/xb;->x()I

    move-result v9

    invoke-virtual {v0}, Lr4/xb;->c()I

    move-result v10

    invoke-virtual {v0}, Lr4/xb;->c()I

    move-result v11

    invoke-virtual {v0}, Lr4/xb;->x()I

    move-result v12

    invoke-virtual {v0}, Lr4/xb;->x()I

    move-result v13

    iget-wide v0, v2, Lr4/j74;->b:J

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x10

    if-lez p0, :cond_4

    new-array v0, p0, [B

    invoke-virtual {v4, v0, v6, p0, v6}, Lr4/vz3;->i([BIIZ)Z

    move-object v14, v0

    goto :goto_2

    :cond_4
    sget-object p0, Lr4/lc;->f:[B

    move-object v14, p0

    :goto_2
    new-instance p0, Lr4/i74;

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lr4/i74;-><init>(IIIIII[B)V

    return-object p0
.end method
