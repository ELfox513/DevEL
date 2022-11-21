.class public final Lr4/b31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/b8;

.field public b:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Lr4/ft3;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lr4/s33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s33<",
            "Lr4/ft3;",
            "Lr4/e8;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lr4/ft3;

.field public e:Lr4/ft3;

.field public f:Lr4/ft3;


# direct methods
.method public constructor <init>(Lr4/b8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b31;->a:Lr4/b8;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p1

    iput-object p1, p0, Lr4/b31;->b:Lr4/o33;

    invoke-static {}, Lr4/s33;->a()Lr4/s33;

    move-result-object p1

    iput-object p1, p0, Lr4/b31;->c:Lr4/s33;

    return-void
.end method

.method public static synthetic a(Lr4/b31;)Lr4/o33;
    .locals 0

    iget-object p0, p0, Lr4/b31;->b:Lr4/o33;

    return-object p0
.end method

.method public static l(Lr4/a7;Lr4/o33;Lr4/ft3;Lr4/b8;)Lr4/ft3;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/a7;",
            "Lr4/o33<",
            "Lr4/ft3;",
            ">;",
            "Lr4/ft3;",
            "Lr4/b8;",
            ")",
            "Lr4/ft3;"
        }
    .end annotation

    invoke-interface {p0}, Lr4/a7;->G()Lr4/e8;

    move-result-object v0

    invoke-interface {p0}, Lr4/a7;->t()I

    move-result v1

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-interface {p0}, Lr4/a7;->z()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p3, v5}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object p3

    invoke-interface {p0}, Lr4/a7;->O()J

    move-result-wide v0

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lr4/b8;->f(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ft3;

    invoke-interface {p0}, Lr4/a7;->z()Z

    move-result v6

    invoke-interface {p0}, Lr4/a7;->P()I

    move-result v7

    invoke-interface {p0}, Lr4/a7;->y()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lr4/b31;->m(Lr4/ft3;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lr4/a7;->z()Z

    move-result v6

    invoke-interface {p0}, Lr4/a7;->P()I

    move-result v7

    invoke-interface {p0}, Lr4/a7;->y()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lr4/b31;->m(Lr4/ft3;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method public static m(Lr4/ft3;Ljava/lang/Object;ZIII)Z
    .locals 1

    iget-object v0, p0, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lr4/f04;->b:I

    if-ne p2, p3, :cond_3

    iget p0, p0, Lr4/f04;->c:I

    if-ne p0, p4, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget p2, p0, Lr4/f04;->b:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    iget p0, p0, Lr4/f04;->e:I

    if-ne p0, p5, :cond_3

    :goto_0
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method


# virtual methods
.method public final b()Lr4/ft3;
    .locals 1

    iget-object v0, p0, Lr4/b31;->d:Lr4/ft3;

    return-object v0
.end method

.method public final c()Lr4/ft3;
    .locals 1

    iget-object v0, p0, Lr4/b31;->e:Lr4/ft3;

    return-object v0
.end method

.method public final d()Lr4/ft3;
    .locals 1

    iget-object v0, p0, Lr4/b31;->f:Lr4/ft3;

    return-object v0
.end method

.method public final e()Lr4/ft3;
    .locals 3

    iget-object v0, p0, Lr4/b31;->b:Lr4/o33;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/b31;->b:Lr4/o33;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_0
    check-cast v0, Lr4/ft3;

    return-object v0
.end method

.method public final f(Lr4/ft3;)Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/b31;->c:Lr4/s33;

    invoke-virtual {v0, p1}, Lr4/s33;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/e8;

    return-object p1
.end method

.method public final g(Lr4/a7;)V
    .locals 3

    iget-object v0, p0, Lr4/b31;->b:Lr4/o33;

    iget-object v1, p0, Lr4/b31;->e:Lr4/ft3;

    iget-object v2, p0, Lr4/b31;->a:Lr4/b8;

    invoke-static {p1, v0, v1, v2}, Lr4/b31;->l(Lr4/a7;Lr4/o33;Lr4/ft3;Lr4/b8;)Lr4/ft3;

    move-result-object p1

    iput-object p1, p0, Lr4/b31;->d:Lr4/ft3;

    return-void
.end method

.method public final h(Lr4/a7;)V
    .locals 3

    iget-object v0, p0, Lr4/b31;->b:Lr4/o33;

    iget-object v1, p0, Lr4/b31;->e:Lr4/ft3;

    iget-object v2, p0, Lr4/b31;->a:Lr4/b8;

    invoke-static {p1, v0, v1, v2}, Lr4/b31;->l(Lr4/a7;Lr4/o33;Lr4/ft3;Lr4/b8;)Lr4/ft3;

    move-result-object v0

    iput-object v0, p0, Lr4/b31;->d:Lr4/ft3;

    invoke-interface {p1}, Lr4/a7;->G()Lr4/e8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/b31;->j(Lr4/e8;)V

    return-void
.end method

.method public final i(Ljava/util/List;Lr4/ft3;Lr4/a7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/ft3;",
            ">;",
            "Lr4/ft3;",
            "Lr4/a7;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lr4/o33;->x(Ljava/util/Collection;)Lr4/o33;

    move-result-object v0

    iput-object v0, p0, Lr4/b31;->b:Lr4/o33;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ft3;

    iput-object p1, p0, Lr4/b31;->e:Lr4/ft3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/b31;->f:Lr4/ft3;

    :cond_0
    iget-object p1, p0, Lr4/b31;->d:Lr4/ft3;

    if-nez p1, :cond_1

    iget-object p1, p0, Lr4/b31;->b:Lr4/o33;

    iget-object p2, p0, Lr4/b31;->e:Lr4/ft3;

    iget-object v0, p0, Lr4/b31;->a:Lr4/b8;

    invoke-static {p3, p1, p2, v0}, Lr4/b31;->l(Lr4/a7;Lr4/o33;Lr4/ft3;Lr4/b8;)Lr4/ft3;

    move-result-object p1

    iput-object p1, p0, Lr4/b31;->d:Lr4/ft3;

    :cond_1
    invoke-interface {p3}, Lr4/a7;->G()Lr4/e8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/b31;->j(Lr4/e8;)V

    return-void
.end method

.method public final j(Lr4/e8;)V
    .locals 3

    new-instance v0, Lr4/r33;

    invoke-direct {v0}, Lr4/r33;-><init>()V

    iget-object v1, p0, Lr4/b31;->b:Lr4/o33;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/b31;->e:Lr4/ft3;

    invoke-virtual {p0, v0, v1, p1}, Lr4/b31;->k(Lr4/r33;Lr4/ft3;Lr4/e8;)V

    iget-object v1, p0, Lr4/b31;->f:Lr4/ft3;

    iget-object v2, p0, Lr4/b31;->e:Lr4/ft3;

    invoke-static {v1, v2}, Lr4/v03;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/b31;->f:Lr4/ft3;

    invoke-virtual {p0, v0, v1, p1}, Lr4/b31;->k(Lr4/r33;Lr4/ft3;Lr4/e8;)V

    :cond_0
    iget-object v1, p0, Lr4/b31;->d:Lr4/ft3;

    iget-object v2, p0, Lr4/b31;->e:Lr4/ft3;

    invoke-static {v1, v2}, Lr4/v03;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/b31;->d:Lr4/ft3;

    iget-object v2, p0, Lr4/b31;->f:Lr4/ft3;

    invoke-static {v1, v2}, Lr4/v03;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/b31;->d:Lr4/ft3;

    invoke-virtual {p0, v0, v1, p1}, Lr4/b31;->k(Lr4/r33;Lr4/ft3;Lr4/e8;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/b31;->b:Lr4/o33;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lr4/b31;->b:Lr4/o33;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ft3;

    invoke-virtual {p0, v0, v2, p1}, Lr4/b31;->k(Lr4/r33;Lr4/ft3;Lr4/e8;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lr4/b31;->b:Lr4/o33;

    iget-object v2, p0, Lr4/b31;->d:Lr4/ft3;

    invoke-virtual {v1, v2}, Lr4/o33;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/b31;->d:Lr4/ft3;

    invoke-virtual {p0, v0, v1, p1}, Lr4/b31;->k(Lr4/r33;Lr4/ft3;Lr4/e8;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lr4/r33;->c()Lr4/s33;

    move-result-object p1

    iput-object p1, p0, Lr4/b31;->c:Lr4/s33;

    return-void
.end method

.method public final k(Lr4/r33;Lr4/ft3;Lr4/e8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/r33<",
            "Lr4/ft3;",
            "Lr4/e8;",
            ">;",
            "Lr4/ft3;",
            "Lr4/e8;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lr4/r33;->a(Ljava/lang/Object;Ljava/lang/Object;)Lr4/r33;

    return-void

    :cond_1
    iget-object p3, p0, Lr4/b31;->c:Lr4/s33;

    invoke-virtual {p3, p2}, Lr4/s33;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/e8;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, Lr4/r33;->a(Ljava/lang/Object;Ljava/lang/Object;)Lr4/r33;

    :cond_2
    return-void
.end method
