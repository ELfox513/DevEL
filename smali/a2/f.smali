.class public La2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/f$b;
    }
.end annotation


# instance fields
.field public final a:Lz1/v;

.field public final b:Z

.field public final c:La2/c;


# direct methods
.method public constructor <init>(Lz1/v;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, La2/f;->b:Z

    iput-object p1, p0, La2/f;->a:Lz1/v;

    invoke-static {p1}, La2/d;->c(Lz1/v;)La2/c;

    move-result-object p1

    iput-object p1, p0, La2/f;->c:La2/c;

    return-void
.end method

.method public static e(Lz1/v;Z)Lw1/u;
    .locals 1

    new-instance v0, La2/f;

    invoke-direct {v0, p0, p1}, La2/f;-><init>(Lz1/v;Z)V

    invoke-virtual {v0}, La2/f;->a()Lw1/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lw1/u;
    .locals 4

    new-instance v0, La2/a;

    iget-object v1, p0, La2/f;->a:Lz1/v;

    iget-object v2, p0, La2/f;->c:La2/c;

    iget-boolean v3, p0, La2/f;->b:Z

    invoke-direct {v0, v1, v2, v3}, La2/a;-><init>(Lz1/v;La2/c;Z)V

    invoke-virtual {v0}, La2/e;->a()Lz1/p;

    move-result-object v1

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->L()V

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2, v1}, Lz1/v;->C(Lz1/p;)V

    invoke-virtual {p0}, La2/f;->h()V

    invoke-virtual {v0}, La2/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La2/f;->f()V

    :cond_0
    invoke-virtual {p0}, La2/f;->g()V

    new-instance v0, Lw1/u;

    invoke-virtual {p0}, La2/f;->c()Lw1/c;

    move-result-object v1

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Lz1/v;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lw1/u;-><init>(Lw1/c;I)V

    new-instance v1, La2/b;

    invoke-direct {v1, v0}, La2/b;-><init>(Lw1/u;)V

    invoke-virtual {v1}, La2/b;->c()Lw1/u;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lz1/s;)Lw1/b;
    .locals 4

    invoke-virtual {p1}, Lz1/s;->A()Lb2/j;

    move-result-object v0

    invoke-virtual {p1}, Lz1/s;->x()I

    move-result v1

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->q()Lz1/s;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lz1/s;->y()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lb2/j;->A(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    sget-object v0, Lb2/j;->k:Lb2/j;

    invoke-virtual {p0, p1}, La2/f;->i(Lz1/s;)V

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit predecessor must have no other successors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz1/s;->y()I

    move-result p1

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    new-instance v2, Lw1/b;

    invoke-virtual {p1}, Lz1/s;->y()I

    move-result v3

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/f;->d(Ljava/util/ArrayList;)Lw1/i;

    move-result-object p1

    invoke-direct {v2, v3, p1, v0, v1}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    return-object v2
.end method

.method public final c()Lw1/c;
    .locals 7

    iget-object v0, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->q()Lz1/s;

    move-result-object v1

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->g()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Lw1/c;

    invoke-direct {v4, v3}, Lw1/c;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    invoke-virtual {v5}, Lz1/s;->p()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v5, v1, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5}, La2/f;->b(Lz1/s;)Lw1/b;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lw1/c;->N(ILw1/b;)V

    move v3, v6

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object v4
.end method

.method public final d(Ljava/util/ArrayList;)Lw1/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lz1/u;",
            ">;)",
            "Lw1/i;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lw1/i;

    invoke-direct {v1, v0}, Lw1/i;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3}, Lz1/u;->J()Lw1/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lw1/i;->C(ILw1/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->t()I

    move-result v0

    new-instance v1, Lz1/a;

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->u()I

    move-result v2

    invoke-direct {v1, v2}, Lz1/a;-><init>(I)V

    iget-object v2, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v2}, Lz1/v;->u()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    sub-int v5, v2, v0

    add-int/2addr v5, v3

    invoke-virtual {v1, v3, v5, v4}, Lz1/a;->e(III)V

    goto :goto_1

    :cond_0
    sub-int v5, v3, v0

    invoke-virtual {v1, v3, v5, v4}, Lz1/a;->e(III)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v0, v1}, Lz1/v;->C(Lz1/p;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, La2/f;->a:Lz1/v;

    new-instance v2, La2/f$a;

    invoke-direct {v2, p0, v0}, La2/f$a;-><init>(La2/f;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lz1/v;->j(ZLz1/s$b;)V

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, La2/f;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    new-instance v3, La2/f$b;

    invoke-direct {v3, v0}, La2/f$b;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lz1/s;->m(Lz1/n$b;)V

    invoke-virtual {v2}, Lz1/s;->H()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1}, Lz1/s;->L()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final i(Lz1/s;)V
    .locals 2

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/u;

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object p1

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lw1/v;->D1:Lw1/t;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exit predecessor must end in valid exit statement."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
