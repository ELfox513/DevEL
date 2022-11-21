.class public final Lo1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb2/d;

.field public final b:Lx1/f0;

.field public final c:[I

.field public d:I

.field public e:Lq1/j;


# direct methods
.method public constructor <init>(Lb2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lb2/d;->n(I)I

    move-result v0

    iput-object p1, p0, Lo1/a;->a:Lb2/d;

    new-instance p1, Lx1/f0;

    invoke-direct {p1, v0}, Lx1/f0;-><init>(I)V

    iput-object p1, p0, Lo1/a;->b:Lx1/f0;

    new-array p1, v0, [I

    iput-object p1, p0, Lo1/a;->c:[I

    const/4 p1, -0x1

    iput p1, p0, Lo1/a;->d:I

    return-void
.end method

.method public static c(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lo1/a;->c:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aput v1, v3, v2

    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    invoke-virtual {v3, v1}, Lb2/d;->l(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v0, Lq1/i;

    goto :goto_3

    :pswitch_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    add-int/lit8 v1, v1, 0x9

    goto :goto_2

    :pswitch_4
    add-int/lit8 v1, v1, 0x5

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    goto :goto_1

    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while preparsing cst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v1, p0, Lo1/a;->d:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lo1/a;->g()V

    iget v0, p0, Lo1/a;->d:I

    return v0
.end method

.method public d()Lx1/f0;
    .locals 1

    invoke-virtual {p0}, Lo1/a;->g()V

    iget-object v0, p0, Lo1/a;->b:Lx1/f0;

    return-object v0
.end method

.method public final e()V
    .locals 9

    invoke-virtual {p0}, Lo1/a;->a()V

    iget-object v0, p0, Lo1/a;->e:Lq1/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constant_pool_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lo1/a;->c:[I

    array-length v7, v7

    invoke-static {v7}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v0, p0, Lo1/a;->e:Lq1/j;

    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    const/16 v4, 0xa

    const-string v5, "\nconstant_pool:"

    invoke-interface {v0, v3, v4, v1, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v0, p0, Lo1/a;->e:Lq1/j;

    invoke-interface {v0, v2}, Lq1/j;->b(I)V

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget-object v3, p0, Lo1/a;->c:[I

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lo1/a;->c:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo1/a;->b:Lx1/f0;

    invoke-virtual {v4, v3}, Lx1/f0;->h(I)Lx1/a;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v0}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lo1/a;->e:Lq1/j;

    if-eqz v3, :cond_8

    :goto_1
    iget-object v3, p0, Lo1/a;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lo1/a;->b:Lx1/f0;

    invoke-virtual {v3, v2}, Lx1/f0;->h(I)Lx1/a;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lo1/a;->c:[I

    aget v4, v4, v2

    iget v5, p0, Lo1/a;->d:I

    add-int/lit8 v6, v2, 0x1

    :goto_2
    iget-object v7, p0, Lo1/a;->c:[I

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget v7, v7, v6

    if-eqz v7, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v6, p0, Lo1/a;->e:Lq1/j;

    iget-object v7, p0, Lo1/a;->a:Lb2/d;

    sub-int/2addr v5, v4

    invoke-interface {v6, v7, v4, v5, v3}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lo1/a;->e:Lq1/j;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lq1/j;->b(I)V

    iget-object v0, p0, Lo1/a;->e:Lq1/j;

    iget-object v2, p0, Lo1/a;->a:Lb2/d;

    iget v3, p0, Lo1/a;->d:I

    const-string v4, "end constant_pool"

    invoke-interface {v0, v2, v3, v1, v4}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final f(ILjava/util/BitSet;)Lx1/a;
    .locals 6

    const-string v0, " at offset "

    const-string v1, "...while parsing cst "

    iget-object v2, p0, Lo1/a;->b:Lx1/f0;

    invoke-virtual {v2, p1}, Lx1/f0;->h(I)Lx1/a;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lo1/a;->c:[I

    aget v2, v2, p1

    :try_start_0
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    invoke-virtual {v3, v2}, Lb2/d;->l(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance p2, Lq1/i;

    goto/16 :goto_5

    :pswitch_1
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/a0;

    invoke-static {v3, p2}, Lx1/r;->E(ILx1/a0;)Lx1/r;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_2
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/d0;

    invoke-static {p2}, Lx1/b0;->u(Lx1/d0;)Lx1/b0;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_3
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->l(I)I

    move-result v3

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    packed-switch v3, :pswitch_data_1

    new-instance p2, Lq1/i;

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/q;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    instance-of v4, p2, Lx1/z;

    if-nez v4, :cond_2

    instance-of v4, p2, Lx1/q;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lq1/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ref constant type for MethodHandle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_6
    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/z;

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/n;

    :cond_2
    :goto_0
    invoke-static {v3}, Lo1/a;->c(I)I

    move-result v3

    invoke-static {v3, p2}, Lx1/y;->D(ILx1/a;)Lx1/y;

    move-result-object p2

    goto/16 :goto_4

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported MethodHandle kind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_8
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object v3

    check-cast v3, Lx1/d0;

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/d0;

    new-instance v4, Lx1/a0;

    invoke-direct {v4, v3, p2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    goto :goto_2

    :pswitch_9
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object v3

    check-cast v3, Lx1/e0;

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/a0;

    new-instance v4, Lx1/q;

    invoke-direct {v4, v3, p2}, Lx1/q;-><init>(Lx1/e0;Lx1/a0;)V

    goto :goto_2

    :pswitch_a
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object v3

    check-cast v3, Lx1/e0;

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/a0;

    new-instance v4, Lx1/z;

    invoke-direct {v4, v3, p2}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    goto :goto_2

    :pswitch_b
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object v3

    check-cast v3, Lx1/e0;

    iget-object v4, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lb2/d;->n(I)I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/a0;

    new-instance v4, Lx1/n;

    invoke-direct {v4, v3, p2}, Lx1/n;-><init>(Lx1/e0;Lx1/a0;)V

    :goto_2
    move-object p2, v4

    goto :goto_4

    :pswitch_c
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    goto :goto_4

    :pswitch_d
    iget-object v3, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lb2/d;->n(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lo1/a;->f(ILjava/util/BitSet;)Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/d0;

    new-instance v3, Lx1/e0;

    invoke-virtual {p2}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ly1/c;->E(Ljava/lang/String;)Ly1/c;

    move-result-object p2

    invoke-direct {v3, p2}, Lx1/e0;-><init>(Ly1/c;)V

    goto :goto_3

    :pswitch_e
    iget-object p2, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->j(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lx1/l;->B(J)Lx1/l;

    move-result-object p2

    goto :goto_4

    :pswitch_f
    iget-object p2, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->j(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lx1/w;->C(J)Lx1/w;

    move-result-object p2

    goto :goto_4

    :pswitch_10
    iget-object p2, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->i(I)I

    move-result p2

    invoke-static {p2}, Lx1/o;->B(I)Lx1/o;

    move-result-object p2

    goto :goto_4

    :pswitch_11
    iget-object p2, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->i(I)I

    move-result p2

    invoke-static {p2}, Lx1/p;->C(I)Lx1/p;

    move-result-object p2

    goto :goto_4

    :pswitch_12
    invoke-virtual {p0, v2}, Lo1/a;->h(I)Lx1/d0;

    move-result-object v3

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object p2, v3

    :goto_4
    iget-object v0, p0, Lo1/a;->b:Lx1/f0;

    invoke-virtual {v0, p1, p2}, Lx1/f0;->x(ILx1/a;)V

    return-object p2

    :goto_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lq1/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-instance v3, Lq1/i;

    invoke-direct {v3, p2}, Lq1/i;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ll1/d;->a(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Lo1/a;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lo1/a;->e()V

    :cond_0
    return-void
.end method

.method public final h(I)Lx1/d0;
    .locals 2

    iget-object v0, p0, Lo1/a;->a:Lb2/d;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lb2/d;->n(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lo1/a;->a:Lb2/d;

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Lb2/d;->r(II)Lb2/d;

    move-result-object p1

    :try_start_0
    new-instance v0, Lx1/d0;

    invoke-direct {v0, p1}, Lx1/d0;-><init>(Lb2/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lq1/i;

    invoke-direct {v0, p1}, Lq1/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(Lq1/j;)V
    .locals 0

    iput-object p1, p0, Lo1/a;->e:Lq1/j;

    return-void
.end method
