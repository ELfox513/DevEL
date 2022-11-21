.class public final Lw1/o;
.super Lw1/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/q;)V
    .locals 0

    invoke-static {p4}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    return-void
.end method

.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_2

    const/4 p4, 0x6

    if-eq p2, p4, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opcode with invalid branchingness: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Lw1/h$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lw1/h$b;->visitPlainInsn(Lw1/o;)V

    return-void
.end method

.method public e()Ly1/e;
    .locals 1

    sget-object v0, Ly1/b;->a:Ly1/b;

    return-object v0
.end method

.method public q(Ly1/c;)Lw1/h;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lw1/q;Lw1/r;)Lw1/h;
    .locals 3

    new-instance v0, Lw1/o;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    return-object v0
.end method

.method public s()Lw1/h;
    .locals 9

    invoke-virtual {p0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    invoke-interface {v2}, Ly1/d;->l()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-interface {v2}, Ly1/d;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v8, v2

    check-cast v8, Lx1/a;

    invoke-virtual {v0}, Lw1/r;->L()Lw1/r;

    move-result-object v7

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    invoke-virtual {p0}, Lw1/h;->k()Lw1/q;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v4

    new-instance v0, Lw1/n;

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v5

    invoke-virtual {p0}, Lw1/h;->k()Lw1/q;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    check-cast v2, Lx1/a;

    invoke-virtual {v0}, Lw1/r;->M()Lw1/r;

    move-result-object v7

    :try_start_0
    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    instance-of v1, v2, Lx1/p;

    if-eqz v1, :cond_3

    const/16 v0, 0xe

    check-cast v2, Lx1/p;

    invoke-virtual {v2}, Lx1/p;->B()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lx1/p;->C(I)Lx1/p;

    move-result-object v2

    :cond_3
    move-object v8, v2

    invoke-virtual {p0}, Lw1/h;->k()Lw1/q;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lw1/n;

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v5

    invoke-virtual {p0}, Lw1/h;->k()Lw1/q;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    return-object v0

    :catch_0
    return-object p0
.end method
