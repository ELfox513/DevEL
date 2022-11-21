.class public final Lr4/sl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/lo3;


# instance fields
.field public final a:Lr4/rl3;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lr4/rl3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/sl3;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lr4/zm3;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    iput-object p0, p1, Lr4/rl3;->c:Lr4/sl3;

    return-void
.end method

.method public static final S(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lr4/bn3;->k()Lr4/bn3;

    move-result-object p0

    throw p0
.end method

.method public static final T(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lr4/bn3;->k()Lr4/bn3;

    move-result-object p0

    throw p0
.end method

.method public static U(Lr4/rl3;)Lr4/sl3;
    .locals 1

    iget-object v0, p0, Lr4/rl3;->c:Lr4/sl3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lr4/sl3;

    invoke-direct {v0, p0}, Lr4/sl3;-><init>(Lr4/rl3;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/ln3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/ln3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/ln3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/ln3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final D(Ljava/util/List;Lr4/ro3;Lr4/bm3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lr4/sl3;->P(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lr4/sl3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->g()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lr4/sl3;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final E()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->y()I

    move-result v0

    return v0
.end method

.method public final F(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/ln3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/ln3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/ll3;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lr4/sl3;->m()Lr4/ll3;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lr4/sl3;->d:I

    return-void

    :cond_2
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final H(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_2
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lr4/sl3;->d:I

    return-void

    :cond_8
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final I(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/ln3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/ln3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->o()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final J(Ljava/util/List;Lr4/ro3;Lr4/bm3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p0, p2, p3}, Lr4/sl3;->Q(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lr4/sl3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->g()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lr4/sl3;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final K()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final M(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final N(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lr4/gn3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lr4/gn3;

    :cond_1
    invoke-virtual {p0}, Lr4/sl3;->m()Lr4/ll3;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/gn3;->p(Lr4/ll3;)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget p2, p0, Lr4/sl3;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lr4/sl3;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lr4/sl3;->l()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lr4/sl3;->d:I

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final O(I)V
    .locals 1

    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1
.end method

.method public final P(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    iget v2, v1, Lr4/rl3;->a:I

    iget v3, v1, Lr4/rl3;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lr4/rl3;->A(I)I

    move-result v0

    invoke-interface {p1}, Lr4/ro3;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lr4/sl3;->a:Lr4/rl3;

    iget v3, v2, Lr4/rl3;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lr4/rl3;->a:I

    invoke-interface {p1, v1, p0, p2}, Lr4/ro3;->j(Ljava/lang/Object;Lr4/lo3;Lr4/bm3;)V

    invoke-interface {p1, v1}, Lr4/ro3;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lr4/rl3;->h(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    iget p2, p1, Lr4/rl3;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lr4/rl3;->a:I

    invoke-virtual {p1, v0}, Lr4/rl3;->a(I)V

    return-object v1

    :cond_0
    new-instance p1, Lr4/bn3;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lr4/sl3;->c:I

    iget v1, p0, Lr4/sl3;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lr4/sl3;->c:I

    :try_start_0
    invoke-interface {p1}, Lr4/ro3;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lr4/ro3;->j(Ljava/lang/Object;Lr4/lo3;Lr4/bm3;)V

    invoke-interface {p1, v1}, Lr4/ro3;->e(Ljava/lang/Object;)V

    iget p1, p0, Lr4/sl3;->b:I

    iget p2, p0, Lr4/sl3;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lr4/sl3;->c:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lr4/bn3;->k()Lr4/bn3;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lr4/sl3;->c:I

    throw p1
.end method

.method public final R(I)V
    .locals 1

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lr4/bn3;->d()Lr4/bn3;

    move-result-object p1

    throw p1
.end method

.method public final a()I
    .locals 2

    iget v0, p0, Lr4/sl3;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lr4/sl3;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lr4/sl3;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iput v0, p0, Lr4/sl3;->b:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lr4/sl3;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lr4/sl3;->b:I

    return v0
.end method

.method public final c()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->j()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->k()F

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lr4/sl3;->b:I

    iget v1, p0, Lr4/sl3;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1, v0}, Lr4/rl3;->i(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->p()I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->n()I

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->q()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lr4/ll3;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->t()Lr4/ll3;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->w()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->y()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/im3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lr4/im3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->k()F

    move-result p1

    invoke-virtual {v0, p1}, Lr4/im3;->e(F)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_2
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->k()F

    move-result p1

    invoke-virtual {v0, p1}, Lr4/im3;->e(F)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lr4/sl3;->d:I

    return-void

    :cond_8
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final r()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->v()I

    move-result v0

    return v0
.end method

.method public final s(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/zk3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/zk3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->q()Z

    move-result p1

    invoke-virtual {v0, p1}, Lr4/zk3;->e(Z)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->q()Z

    move-result p1

    invoke-virtual {v0, p1}, Lr4/zk3;->e(Z)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lr4/sl3;->R(I)V

    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final t()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/ln3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/ln3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ln3;->i(J)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final v(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    invoke-virtual {p0, p1, p2}, Lr4/sl3;->P(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    return v0
.end method

.method public final x(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/yl3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lr4/yl3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->j()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lr4/yl3;->e(D)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->j()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/yl3;->e(D)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_4
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->T(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->j()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->j()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lr4/sl3;->d:I

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lr4/qm3;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lr4/qm3;

    iget p1, p0, Lr4/sl3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->g()I

    move-result p1

    iget v1, p0, Lr4/sl3;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lr4/sl3;->d:I

    return-void

    :cond_2
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->u()I

    move-result p1

    invoke-static {p1}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/qm3;->Y(I)V

    iget-object p1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {p1}, Lr4/rl3;->c()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lr4/sl3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->g()I

    move-result v0

    iget v1, p0, Lr4/sl3;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lr4/sl3;->d:I

    return-void

    :cond_8
    invoke-static {}, Lr4/bn3;->i()Lr4/an3;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->u()I

    move-result v0

    invoke-static {v0}, Lr4/sl3;->S(I)V

    iget-object v1, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v1}, Lr4/rl3;->c()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/sl3;->a:Lr4/rl3;

    invoke-virtual {v0}, Lr4/rl3;->c()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final z(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/ro3<",
            "TT;>;",
            "Lr4/bm3;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lr4/sl3;->O(I)V

    invoke-virtual {p0, p1, p2}, Lr4/sl3;->Q(Lr4/ro3;Lr4/bm3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
