.class public final Lo7/r;
.super Lo7/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/q<",
        "Lo7/y$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo7/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/y$d;

    invoke-virtual {p1}, Lo7/y$d;->e()I

    move-result p1

    return p1
.end method

.method public b(Lo7/p;Lo7/s0;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lo7/p;->a(Lo7/s0;I)Lo7/y$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lo7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lo7/y$c;

    iget-object p1, p1, Lo7/y$c;->extensions:Lo7/u;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Lo7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lo7/y$c;

    invoke-virtual {p1}, Lo7/y$c;->Q()Lo7/u;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo7/s0;)Z
    .locals 0

    instance-of p1, p1, Lo7/y$c;

    return p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo7/r;->c(Ljava/lang/Object;)Lo7/u;

    move-result-object p1

    invoke-virtual {p1}, Lo7/u;->t()V

    return-void
.end method

.method public g(Lo7/g1;Ljava/lang/Object;Lo7/p;Lo7/u;Ljava/lang/Object;Lo7/o1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/g1;",
            "Ljava/lang/Object;",
            "Lo7/p;",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;TUB;",
            "Lo7/o1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    check-cast p2, Lo7/y$e;

    invoke-virtual {p2}, Lo7/y$e;->c()I

    move-result v0

    iget-object v1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {v1}, Lo7/y$d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {v1}, Lo7/y$d;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lo7/r$a;->a:[I

    invoke-virtual {p2}, Lo7/y$e;->a()Lo7/u1$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Type cannot be packed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p2}, Lo7/y$d;->k()Lo7/u1$b;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->s(Ljava/util/List;)V

    iget-object p1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p1}, Lo7/y$d;->d()Lo7/a0$d;

    move-result-object p1

    invoke-static {v0, p3, p1, p5, p6}, Lo7/j1;->z(ILjava/util/List;Lo7/a0$d;Ljava/lang/Object;Lo7/o1;)Ljava/lang/Object;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->a(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->q(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->f(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->h(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->A(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->w(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->O(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->r(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->l(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->p(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->G(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lo7/g1;->L(Ljava/util/List;)V

    :goto_0
    iget-object p1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p1, p3}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Lo7/y$e;->a()Lo7/u1$b;

    move-result-object v2

    sget-object v3, Lo7/u1$b;->A:Lo7/u1$b;

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lo7/g1;->H()I

    move-result p1

    iget-object p3, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p3}, Lo7/y$d;->d()Lo7/a0$d;

    move-result-object p3

    invoke-interface {p3, p1}, Lo7/a0$d;->a(I)Lo7/a0$c;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {v0, p1, p5, p6}, Lo7/j1;->L(IILjava/lang/Object;Lo7/o1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    sget-object p6, Lo7/r$a;->a:[I

    invoke-virtual {p2}, Lo7/y$e;->a()Lo7/u1$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p2}, Lo7/y$e;->b()Lo7/s0;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lo7/g1;->d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p2}, Lo7/y$e;->b()Lo7/s0;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lo7/g1;->e(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_10
    invoke-interface {p1}, Lo7/g1;->B()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_11
    invoke-interface {p1}, Lo7/g1;->F()Lo7/h;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    invoke-interface {p1}, Lo7/g1;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_14
    invoke-interface {p1}, Lo7/g1;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_15
    invoke-interface {p1}, Lo7/g1;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_16
    invoke-interface {p1}, Lo7/g1;->J()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_17
    invoke-interface {p1}, Lo7/g1;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_18
    invoke-interface {p1}, Lo7/g1;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :pswitch_19
    invoke-interface {p1}, Lo7/g1;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_1a
    invoke-interface {p1}, Lo7/g1;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1b
    invoke-interface {p1}, Lo7/g1;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_1c
    invoke-interface {p1}, Lo7/g1;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1d
    invoke-interface {p1}, Lo7/g1;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :pswitch_1e
    invoke-interface {p1}, Lo7/g1;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :pswitch_1f
    invoke-interface {p1}, Lo7/g1;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-virtual {p2}, Lo7/y$e;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p1, v1}, Lo7/u;->a(Lo7/u$b;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget-object p1, Lo7/r$a;->a:[I

    invoke-virtual {p2}, Lo7/y$e;->a()Lo7/u1$b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p1}, Lo7/u;->i(Lo7/u$b;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1, v1}, Lo7/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_2
    iget-object p1, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p1, v1}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    :goto_3
    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public h(Lo7/g1;Ljava/lang/Object;Lo7/p;Lo7/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/g1;",
            "Ljava/lang/Object;",
            "Lo7/p;",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Lo7/y$e;

    invoke-virtual {p2}, Lo7/y$e;->b()Lo7/s0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lo7/g1;->d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p2, p1}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Lo7/h;Ljava/lang/Object;Lo7/p;Lo7/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/h;",
            "Ljava/lang/Object;",
            "Lo7/p;",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Lo7/y$e;

    invoke-virtual {p2}, Lo7/y$e;->b()Lo7/s0;

    move-result-object v0

    invoke-interface {v0}, Lo7/s0;->u()Lo7/s0$a;

    move-result-object v0

    invoke-interface {v0}, Lo7/s0$a;->s()Lo7/s0;

    move-result-object v0

    invoke-virtual {p1}, Lo7/h;->x()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lo7/e;->Q(Ljava/nio/ByteBuffer;Z)Lo7/e;

    move-result-object p1

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p3}, Lo7/d1;->b(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    iget-object p2, p2, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {p4, p2, v0}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    invoke-interface {p1}, Lo7/g1;->C()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->a()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public j(Lo7/v1;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/v1;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y$d;

    invoke-virtual {v0}, Lo7/y$d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo7/r$a;->a:[I

    invoke-virtual {v0}, Lo7/y$d;->k()Lo7/u1$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lo7/j1;->X(ILjava/util/List;Lo7/v1;Lo7/h1;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Lo7/j1;->U(ILjava/util/List;Lo7/v1;Lo7/h1;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p2, p1}, Lo7/j1;->c0(ILjava/util/List;Lo7/v1;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p2, p1}, Lo7/j1;->O(ILjava/util/List;Lo7/v1;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->V(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->b0(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->a0(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->Z(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->Y(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->d0(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->N(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->R(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->S(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->V(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->e0(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->W(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->T(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0}, Lo7/y$d;->y()Z

    move-result v0

    invoke-static {v1, p2, p1, v0}, Lo7/j1;->P(ILjava/util/List;Lo7/v1;Z)V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lo7/r$a;->a:[I

    invoke-virtual {v0}, Lo7/y$d;->k()Lo7/u1$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lo7/v1;->l(ILjava/lang/Object;Lo7/h1;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lo7/v1;->I(ILjava/lang/Object;Lo7/h1;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lo7/v1;->o(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo7/h;

    invoke-interface {p1, v0, p2}, Lo7/v1;->f(ILo7/h;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->w(II)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->E(IJ)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->N(II)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->z(IJ)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->u(II)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->c(II)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->t(IZ)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->g(II)V

    goto :goto_0

    :pswitch_1e
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->k(IJ)V

    goto :goto_0

    :pswitch_1f
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->w(II)V

    goto :goto_0

    :pswitch_20
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->p(IJ)V

    goto :goto_0

    :pswitch_21
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->s(IJ)V

    goto :goto_0

    :pswitch_22
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lo7/v1;->F(IF)V

    goto :goto_0

    :pswitch_23
    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo7/v1;->h(ID)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
