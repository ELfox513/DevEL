.class public final Lo7/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/h1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo7/h1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lo7/s0;

.field public final b:Lo7/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o1<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lo7/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/o1;Lo7/q;Lo7/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/o1<",
            "**>;",
            "Lo7/q<",
            "*>;",
            "Lo7/s0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {p2, p3}, Lo7/q;->e(Lo7/s0;)Z

    move-result p1

    iput-boolean p1, p0, Lo7/w0;->c:Z

    iput-object p2, p0, Lo7/w0;->d:Lo7/q;

    iput-object p3, p0, Lo7/w0;->a:Lo7/s0;

    return-void
.end method

.method public static i(Lo7/o1;Lo7/q;Lo7/s0;)Lo7/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/o1<",
            "**>;",
            "Lo7/q<",
            "*>;",
            "Lo7/s0;",
            ")",
            "Lo7/w0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo7/w0;

    invoke-direct {v0, p0, p1, p2}, Lo7/w0;-><init>(Lo7/o1;Lo7/q;Lo7/s0;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-static {v0, p1, p2}, Lo7/j1;->G(Lo7/o1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo7/w0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-static {v0, p1, p2}, Lo7/j1;->E(Lo7/q;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {v0, p1}, Lo7/o1;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v0, p1}, Lo7/q;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Lo7/v1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo7/v1;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v0, p1}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object v0

    invoke-virtual {v0}, Lo7/u;->s()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo7/u$b;

    invoke-interface {v2}, Lo7/u$b;->w()Lo7/u1$c;

    move-result-object v3

    sget-object v4, Lo7/u1$c;->u:Lo7/u1$c;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo7/u$b;->i()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo7/u$b;->y()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lo7/e0$b;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lo7/u$b;->e()I

    move-result v2

    check-cast v1, Lo7/e0$b;

    invoke-virtual {v1}, Lo7/e0$b;->a()Lo7/e0;

    move-result-object v1

    invoke-virtual {v1}, Lo7/f0;->e()Lo7/h;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo7/v1;->d(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lo7/u$b;->e()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo7/v1;->d(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {p0, v0, p1, p2}, Lo7/w0;->k(Lo7/o1;Ljava/lang/Object;Lo7/v1;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v0, p1}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p1

    invoke-virtual {p1}, Lo7/u;->p()Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo7/g1;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lo7/w0;->b:Lo7/o1;

    iget-object v2, p0, Lo7/w0;->d:Lo7/q;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lo7/w0;->h(Lo7/o1;Lo7/q;Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {v0, p1}, Lo7/o1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {v1, p2}, Lo7/o1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lo7/w0;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v0, p1}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p1

    iget-object v0, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v0, p2}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo7/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {p0, v0, p1}, Lo7/w0;->g(Lo7/o1;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lo7/w0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v1, p1}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p1

    invoke-virtual {p1}, Lo7/u;->j()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final g(Lo7/o1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/o1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lo7/o1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo7/o1;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final h(Lo7/o1;Lo7/q;Ljava/lang/Object;Lo7/g1;Lo7/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lo7/u$b<",
            "TET;>;>(",
            "Lo7/o1<",
            "TUT;TUB;>;",
            "Lo7/q<",
            "TET;>;TT;",
            "Lo7/g1;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Lo7/o1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, p3}, Lo7/q;->d(Ljava/lang/Object;)Lo7/u;

    move-result-object v8

    :goto_0
    :try_start_0
    invoke-interface {p4}, Lo7/g1;->C()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3, v7}, Lo7/o1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lo7/w0;->j(Lo7/g1;Lo7/p;Lo7/q;Lo7/u;Lo7/o1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, v7}, Lo7/o1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lo7/o1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->b:Lo7/o1;

    invoke-virtual {v0, p1}, Lo7/o1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lo7/w0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo7/w0;->d:Lo7/q;

    invoke-virtual {v1, p1}, Lo7/q;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lo7/u;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final j(Lo7/g1;Lo7/p;Lo7/q;Lo7/u;Lo7/o1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lo7/u$b<",
            "TET;>;>(",
            "Lo7/g1;",
            "Lo7/p;",
            "Lo7/q<",
            "TET;>;",
            "Lo7/u<",
            "TET;>;",
            "Lo7/o1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lo7/g1;->v()I

    move-result v0

    sget v1, Lo7/u1;->a:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo7/w0;->a:Lo7/s0;

    invoke-static {v0}, Lo7/u1;->a(I)I

    move-result v0

    invoke-virtual {p3, p2, v1, v0}, Lo7/q;->b(Lo7/p;Lo7/s0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0, p2, p4}, Lo7/q;->h(Lo7/g1;Ljava/lang/Object;Lo7/p;Lo7/u;)V

    return v2

    :cond_0
    invoke-virtual {p5, p6, p1}, Lo7/o1;->m(Ljava/lang/Object;Lo7/g1;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lo7/g1;->I()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lo7/g1;->C()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lo7/g1;->v()I

    move-result v4

    sget v5, Lo7/u1;->c:I

    if-ne v4, v5, :cond_5

    invoke-interface {p1}, Lo7/g1;->m()I

    move-result v0

    iget-object v1, p0, Lo7/w0;->a:Lo7/s0;

    invoke-virtual {p3, p2, v1, v0}, Lo7/q;->b(Lo7/p;Lo7/s0;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget v5, Lo7/u1;->d:I

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p3, p1, v1, p2, p4}, Lo7/q;->h(Lo7/g1;Ljava/lang/Object;Lo7/p;Lo7/u;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lo7/g1;->F()Lo7/h;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Lo7/g1;->I()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-interface {p1}, Lo7/g1;->v()I

    move-result p1

    sget v4, Lo7/u1;->b:I

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {p3, v3, v1, p2, p4}, Lo7/q;->i(Lo7/h;Ljava/lang/Object;Lo7/p;Lo7/u;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lo7/o1;->d(Ljava/lang/Object;ILo7/h;)V

    :cond_9
    :goto_2
    return v2

    :cond_a
    invoke-static {}, Lo7/c0;->a()Lo7/c0;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final k(Lo7/o1;Ljava/lang/Object;Lo7/v1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/o1<",
            "TUT;TUB;>;TT;",
            "Lo7/v1;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lo7/o1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lo7/o1;->s(Ljava/lang/Object;Lo7/v1;)V

    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo7/w0;->a:Lo7/s0;

    invoke-interface {v0}, Lo7/s0;->u()Lo7/s0$a;

    move-result-object v0

    invoke-interface {v0}, Lo7/s0$a;->s()Lo7/s0;

    move-result-object v0

    return-object v0
.end method
