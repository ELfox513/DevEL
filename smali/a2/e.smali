.class public abstract La2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;

.field public final b:La2/c;


# direct methods
.method public constructor <init>(Lz1/v;La2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/e;->a:Lz1/v;

    iput-object p2, p0, La2/e;->b:La2/c;

    return-void
.end method


# virtual methods
.method public abstract a()Lz1/p;
.end method

.method public final b(I)Lw1/q;
    .locals 1

    iget-object v0, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v0, p1}, Lz1/v;->n(I)Lz1/u;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Lz1/u;Lw1/q;)Lw1/q;
    .locals 7

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object v0

    invoke-virtual {v0}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v3, p0, La2/e;->a:Lz1/v;

    invoke-virtual {v3}, Lz1/v;->B()I

    move-result v3

    invoke-virtual {p2}, Lw1/q;->C()Ly1/d;

    move-result-object v4

    invoke-static {v3, v4}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v3

    new-instance v4, Lw1/o;

    invoke-virtual {v3}, Lw1/q;->getType()Ly1/c;

    move-result-object v5

    invoke-static {v5}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v5

    sget-object v6, Lw1/w;->d:Lw1/w;

    invoke-static {p2}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object p2

    invoke-direct {v4, v5, v6, v3, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-static {v4, v0}, Lz1/u;->D(Lw1/h;Lz1/s;)Lz1/u;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result p2

    invoke-virtual {v0}, Lz1/s;->r()Lb2/k;

    move-result-object v0

    invoke-interface {v0}, Lb2/k;->iterator()Lb2/i;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lb2/i;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La2/e;->b:La2/c;

    invoke-interface {v0}, Lb2/i;->next()I

    move-result v2

    invoke-virtual {v1, p2, v2}, La2/c;->a(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, La2/e;->b:La2/c;

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v4

    invoke-virtual {v2, p2, v4}, La2/c;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, La2/e;->a:Lz1/v;

    invoke-virtual {p1}, Lz1/v;->G()V

    return-object v3

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding move here not supported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "specified insn is not in this block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public abstract d()Z
.end method
