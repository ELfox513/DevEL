.class public abstract Lp1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp1/f;

.field public final b:Lx1/e0;

.field public final c:I

.field public final d:Lp1/b;

.field public e:I

.field public f:Lq1/j;


# direct methods
.method public constructor <init>(Lp1/f;Lx1/e0;ILp1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lp1/h;->a:Lp1/f;

    iput-object p2, p0, Lp1/h;->b:Lx1/e0;

    iput p3, p0, Lp1/h;->c:I

    iput-object p4, p0, Lp1/h;->d:Lp1/b;

    const/4 p1, -0x1

    iput p1, p0, Lp1/h;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lp1/h;->a:Lp1/f;

    invoke-virtual {v0}, Lp1/f;->e()Lb2/d;

    move-result-object v0

    iget v1, p0, Lp1/h;->c:I

    invoke-virtual {v0, v1}, Lb2/d;->n(I)I

    move-result v0

    return v0
.end method

.method public final c()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lp1/h;->b:Lx1/e0;

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lp1/h;->h()V

    iget v0, p0, Lp1/h;->e:I

    return v0
.end method

.method public abstract e(I)Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final g()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, "...while parsing "

    const-string v4, "s["

    invoke-virtual/range {p0 .. p0}, Lp1/h;->a()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lp1/h;->b()I

    move-result v5

    iget v6, v1, Lp1/h;->c:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    iget-object v8, v1, Lp1/h;->a:Lp1/f;

    invoke-virtual {v8}, Lp1/f;->e()Lb2/d;

    move-result-object v8

    iget-object v9, v1, Lp1/h;->a:Lp1/f;

    invoke-virtual {v9}, Lp1/f;->f()Lx1/b;

    move-result-object v15

    iget-object v9, v1, Lp1/h;->f:Lq1/j;

    if-eqz v9, :cond_0

    iget v10, v1, Lp1/h;->c:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lp1/h;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "s_count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v8, v10, v7, v11}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_3

    :try_start_0
    invoke-virtual {v8, v6}, Lb2/d;->n(I)I

    move-result v9

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {v8, v10}, Lb2/d;->n(I)I

    move-result v11

    add-int/lit8 v12, v6, 0x4

    invoke-virtual {v8, v12}, Lb2/d;->n(I)I

    move-result v7

    invoke-interface {v15, v11}, Lx1/b;->get(I)Lx1/a;

    move-result-object v11

    check-cast v11, Lx1/d0;

    invoke-interface {v15, v7}, Lx1/b;->get(I)Lx1/a;

    move-result-object v7

    check-cast v7, Lx1/d0;

    iget-object v14, v1, Lp1/h;->f:Lq1/j;

    move/from16 v17, v5

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v15

    invoke-virtual {v7}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v8, v6, v5, v15}, Lq1/j;->d(Lb2/d;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lp1/h;->f()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v8, v6, v15, v14}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    const/4 v14, 0x1

    invoke-interface {v5, v14}, Lq1/j;->b(I)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "access_flags: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Lp1/h;->e(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v5, v8, v6, v15, v14}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v5, v8, v10, v15, v14}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "descriptor: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x2

    invoke-interface {v5, v8, v12, v15, v10}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v18, v15

    const/4 v15, 0x2

    :goto_1
    add-int/lit8 v6, v6, 0x6

    new-instance v5, Lp1/c;

    iget-object v10, v1, Lp1/h;->a:Lp1/f;

    iget-object v12, v1, Lp1/h;->d:Lp1/b;

    invoke-direct {v5, v10, v0, v6, v12}, Lp1/c;-><init>(Lp1/f;IILp1/b;)V

    iget-object v6, v1, Lp1/h;->f:Lq1/j;

    invoke-virtual {v5, v6}, Lp1/c;->e(Lq1/j;)V

    invoke-virtual {v5}, Lp1/c;->a()I

    move-result v6

    invoke-virtual {v5}, Lp1/c;->b()Lq1/k;

    move-result-object v5

    invoke-virtual {v5}, Lb2/o;->setImmutable()V

    new-instance v10, Lx1/a0;

    invoke-direct {v10, v11, v7}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    invoke-virtual {v1, v13, v9, v10, v5}, Lp1/h;->i(IILx1/a0;Lq1/b;)Lq1/f;

    move-result-object v14

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    if-eqz v5, :cond_2

    const/4 v9, -0x1

    invoke-interface {v5, v9}, Lq1/j;->b(I)V

    iget-object v5, v1, Lp1/h;->f:Lq1/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lp1/h;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v5, v8, v6, v12, v9}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v9, v1, Lp1/h;->f:Lq1/j;

    invoke-virtual {v11}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v8

    move v11, v6

    const/16 v16, 0x0

    move-object v12, v5

    move v5, v13

    move-object v13, v7

    const/4 v7, 0x0

    :try_start_1
    invoke-interface/range {v9 .. v14}, Lq1/j;->c(Lb2/d;ILjava/lang/String;Ljava/lang/String;Lq1/f;)V
    :try_end_1
    .catch Lq1/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    move v5, v13

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v13, v5, 0x1

    move/from16 v5, v17

    move-object/from16 v15, v18

    const/4 v7, 0x2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v5, v13

    :goto_3
    new-instance v6, Lq1/i;

    invoke-direct {v6, v0}, Lq1/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lp1/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ll1/d;->a(Ljava/lang/String;)V

    throw v6

    :catch_3
    move-exception v0

    move v5, v13

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lp1/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll1/d;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v6, v1, Lp1/h;->e:I

    return-void
.end method

.method public final h()V
    .locals 1

    iget v0, p0, Lp1/h;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lp1/h;->g()V

    :cond_0
    return-void
.end method

.method public abstract i(IILx1/a0;Lq1/b;)Lq1/f;
.end method

.method public final j(Lq1/j;)V
    .locals 0

    iput-object p1, p0, Lp1/h;->f:Lq1/j;

    return-void
.end method
