.class public final Lo7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/g1;


# instance fields
.field public final a:Lo7/i;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lo7/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo7/j;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lo7/a0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/i;

    iput-object p1, p0, Lo7/j;->a:Lo7/i;

    iput-object p0, p1, Lo7/i;->d:Lo7/j;

    return-void
.end method

.method public static Q(Lo7/i;)Lo7/j;
    .locals 1

    iget-object v0, p0, Lo7/i;->d:Lo7/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lo7/j;

    invoke-direct {v0, p0}, Lo7/j;-><init>(Lo7/i;)V

    return-object v0
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/f;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo7/f;->k(Z)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo7/f;->k(Z)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 2

    iget v0, p0, Lo7/j;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lo7/j;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lo7/j;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iput v0, p0, Lo7/j;->b:I

    :goto_0
    iget v0, p0, Lo7/j;->b:I

    if-eqz v0, :cond_2

    iget v1, p0, Lo7/j;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lo7/u1;->a(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo7/j;->U(Ljava/util/List;Z)V

    return-void
.end method

.method public E(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo7/j;->U(Ljava/util/List;Z)V

    return-void
.end method

.method public F()Lo7/h;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->l()Lo7/h;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/w;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo7/w;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->q()F

    move-result p1

    invoke-virtual {v0, p1}, Lo7/w;->i(F)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->q()F

    move-result p1

    invoke-virtual {v0, p1}, Lo7/w;->i(F)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo7/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public H()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->r()I

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lo7/j;->b:I

    iget v1, p0, Lo7/j;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1, v0}, Lo7/i;->C(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->t()I

    move-result v0

    return v0
.end method

.method public K(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo7/h;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo7/j;->F()Lo7/h;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lo7/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public L(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/m;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/m;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->m()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/m;->i(D)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/m;->i(D)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->m()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->m()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public M()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public P(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    invoke-virtual {p0, p1, p2}, Lo7/j;->T(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final R(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u1$b;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo7/p;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lo7/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lo7/j;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lo7/j;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lo7/j;->N()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lo7/j;->z()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lo7/j;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lo7/j;->k()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lo7/j;->J()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lo7/j;->d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lo7/j;->M()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lo7/j;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lo7/j;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lo7/j;->c()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lo7/j;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lo7/j;->u()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lo7/j;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lo7/j;->F()Lo7/h;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lo7/j;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final S(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lo7/j;->c:I

    iget v1, p0, Lo7/j;->b:I

    invoke-static {v1}, Lo7/u1;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lo7/u1;->c(II)I

    move-result v1

    iput v1, p0, Lo7/j;->c:I

    :try_start_0
    invoke-interface {p1}, Lo7/h1;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lo7/h1;->e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    invoke-interface {p1, v1}, Lo7/h1;->b(Ljava/lang/Object;)V

    iget p1, p0, Lo7/j;->b:I

    iget p2, p0, Lo7/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lo7/j;->c:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lo7/j;->c:I

    throw p1
.end method

.method public final T(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    iget v2, v1, Lo7/i;->a:I

    iget v3, v1, Lo7/i;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lo7/i;->j(I)I

    move-result v0

    invoke-interface {p1}, Lo7/h1;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo7/j;->a:Lo7/i;

    iget v3, v2, Lo7/i;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo7/i;->a:I

    invoke-interface {p1, v1, p0, p2}, Lo7/h1;->e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    invoke-interface {p1, v1}, Lo7/h1;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo7/i;->a(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    iget p2, p1, Lo7/i;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo7/i;->a:I

    invoke-virtual {p1, v0}, Lo7/i;->i(I)V

    return-object v1

    :cond_0
    invoke-static {}, Lo7/c0;->h()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public U(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lo7/h0;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lo7/h0;

    :cond_0
    invoke-virtual {p0}, Lo7/j;->F()Lo7/h;

    move-result-object p1

    invoke-interface {v0, p1}, Lo7/h0;->X(Lo7/h;)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget p2, p0, Lo7/j;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lo7/j;->N()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo7/j;->B()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lo7/j;->d:I

    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final V(I)V
    .locals 1

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public final W(I)V
    .locals 1

    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1
.end method

.method public final X(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public final Y(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public b()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo7/j;->T(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo7/j;->S(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo7/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->w()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->w()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->o()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->k()Z

    move-result v0

    return v0
.end method

.method public k()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->B()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->B()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    return v0
.end method

.method public n(Ljava/util/List;Lo7/h1;Lo7/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lo7/j;->b:I

    :cond_0
    invoke-virtual {p0, p2, p3}, Lo7/j;->S(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->e()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo7/j;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->z()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lo7/j;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public o(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    invoke-virtual {p0, p1, p2}, Lo7/j;->S(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->s()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->Y(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->q()F

    move-result v0

    return v0
.end method

.method public s(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_4
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lo7/j;->V(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lo7/j;->d:I

    return-void
.end method

.method public t(Ljava/util/List;Lo7/h1;Lo7/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lo7/j;->b:I

    :cond_0
    invoke-virtual {p0, p2, p3}, Lo7/j;->T(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->e()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo7/j;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->z()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lo7/j;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->n()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lo7/j;->b:I

    return v0
.end method

.method public w(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/j;->b:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->z()I

    move-result p1

    iget v1, p0, Lo7/j;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lo7/j;->d:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1}, Lo7/i;->d()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lo7/j;->b:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->z()I

    move-result v0

    iget v1, p0, Lo7/j;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lo7/j;->d:I

    return-void

    :cond_8
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/j;->X(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->v()I

    move-result v0

    return v0
.end method

.method public y(Ljava/util/Map;Lo7/l0$a;Lo7/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo7/l0$a<",
            "TK;TV;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v1}, Lo7/i;->A()I

    move-result v1

    iget-object v2, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v2, v1}, Lo7/i;->j(I)I

    move-result v1

    iget-object v2, p2, Lo7/l0$a;->b:Ljava/lang/Object;

    iget-object v3, p2, Lo7/l0$a;->d:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lo7/j;->C()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v5}, Lo7/i;->e()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lo7/j;->I()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lo7/c0;

    invoke-direct {v4, v6}, Lo7/c0;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, p2, Lo7/l0$a;->c:Lo7/u1$b;

    iget-object v5, p2, Lo7/l0$a;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lo7/j;->R(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Lo7/l0$a;->a:Lo7/u1$b;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v5}, Lo7/j;->R(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lo7/c0$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo7/j;->I()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lo7/c0;

    invoke-direct {p1, v6}, Lo7/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p1, v1}, Lo7/i;->i(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {p2, v1}, Lo7/i;->i(I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public z()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/j;->W(I)V

    iget-object v0, p0, Lo7/j;->a:Lo7/i;

    invoke-virtual {v0}, Lo7/i;->w()J

    move-result-wide v0

    return-wide v0
.end method
