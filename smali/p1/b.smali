.class public Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp1/f;IILq1/j;)Lq1/a;
    .locals 10

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    const/4 v1, 0x4

    if-ge p2, v1, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object v3

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v4

    invoke-virtual {v3, p3}, Lb2/d;->n(I)I

    move-result v5

    add-int/lit8 v6, p3, 0x2

    invoke-virtual {v3, v6}, Lb2/d;->i(I)I

    move-result v8

    invoke-interface {v4, v5}, Lx1/b;->get(I)Lx1/a;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lx1/d0;
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p4, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p4, v3, p3, v4, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v3, v6, v1, v2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    invoke-virtual {v9}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v8

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lp1/b;->b(Lp1/f;ILjava/lang/String;IILq1/j;)Lq1/a;

    move-result-object v0
    :try_end_1
    .catch Lq1/i; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lp1/f;ILjava/lang/String;IILq1/j;)Lq1/a;
    .locals 6

    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p2

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v5

    new-instance p1, Lm1/y;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lm1/y;-><init>(Ljava/lang/String;Lb2/d;IILx1/b;)V

    if-eqz p6, :cond_0

    const-string p3, "attribute data"

    invoke-interface {p6, p2, p4, p5, p3}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    return-object p1
.end method
