.class public final Lb5/a0;
.super Lb5/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb5/x;-><init>()V

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->k:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->x:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->y:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->z:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->F:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->B:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->G:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->L:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->b0:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->o0:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->r0:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->u0:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb5/x;->a:Ljava/util/List;

    sget-object v1, Lb5/n0;->v0:Lb5/n0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    sget-object v0, Lb5/n0;->L:Lb5/n0;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb5/w5;->i(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5/q;

    invoke-virtual {p0, v2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb5/q;

    invoke-virtual {p0, v4}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v4

    instance-of v5, v4, Lb5/f;

    if-eqz v5, :cond_1

    check-cast v4, Lb5/f;

    invoke-virtual {v4}, Lb5/f;->r()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_0
    new-instance p1, Lb5/p;

    invoke-interface {v2}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0, v3, p0}, Lb5/p;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lb5/v4;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FN requires an ArrayValue of parameter names found %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    sget-object v0, Lb5/n0;->b:Lb5/n0;

    invoke-static {p1}, Lb5/w5;->e(Ljava/lang/String;)Lb5/n0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1a

    const/16 v5, 0xf

    if-eq v0, v5, :cond_19

    const/16 v5, 0x19

    if-eq v0, v5, :cond_18

    const/16 v5, 0x29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x36

    if-eq v0, v5, :cond_12

    const/16 v5, 0x39

    const-string v6, "return"

    if-eq v0, v5, :cond_10

    const/16 v5, 0x13

    if-eq v0, v5, :cond_d

    const/16 v5, 0x14

    if-eq v0, v5, :cond_b

    const/16 v5, 0x3c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lb5/x;->b(Ljava/lang/String;)Lb5/q;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Lb5/n0;->y:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    sget-object p1, Lb5/q;->g:Lb5/q;

    return-object p1

    :pswitch_1
    invoke-virtual {p2}, Lb5/v4;->a()Lb5/v4;

    move-result-object p1

    new-instance p2, Lb5/f;

    invoke-direct {p2, p3}, Lb5/f;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lb5/v4;->c(Lb5/f;)Lb5/q;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lb5/n0;->v0:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p1}, Lb5/q;->g()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    sget-object p1, Lb5/n0;->u0:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p2, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb5/q;

    invoke-virtual {p2, p3}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p3

    instance-of v1, v0, Lb5/f;

    if-eqz v1, :cond_a

    instance-of v1, p3, Lb5/f;

    if-eqz v1, :cond_9

    check-cast v0, Lb5/f;

    check-cast p3, Lb5/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lb5/f;->i()I

    move-result v5

    if-ge v1, v5, :cond_6

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lb5/f;->m(I)Lb5/q;

    move-result-object v2

    invoke-virtual {p2, v2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p3, v1}, Lb5/f;->m(I)Lb5/q;

    move-result-object v2

    invoke-virtual {p2, v2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v2

    instance-of v5, v2, Lb5/h;

    if-eqz v5, :cond_5

    move-object p1, v2

    check-cast p1, Lb5/h;

    invoke-virtual {p1}, Lb5/h;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "break"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1

    :cond_5
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lb5/f;->i()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p3}, Lb5/f;->i()I

    move-result v1

    if-ne p1, v1, :cond_8

    invoke-virtual {v0}, Lb5/f;->i()I

    move-result p1

    invoke-virtual {p3, p1}, Lb5/f;->m(I)Lb5/q;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v2

    instance-of p1, v2, Lb5/h;

    if-eqz p1, :cond_8

    move-object p1, v2

    check-cast p1, Lb5/h;

    invoke-virtual {p1}, Lb5/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "continue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return-object v2

    :cond_8
    :goto_4
    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, case statements are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, cases are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    sget-object p1, Lb5/n0;->G:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, p3}, Lb5/w5;->i(Ljava/lang/String;ILjava/util/List;)V

    invoke-static {p2, p3}, Lb5/a0;->c(Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb5/j;

    invoke-virtual {p3}, Lb5/j;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lb5/v4;->g(Ljava/lang/String;Lb5/q;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p3}, Lb5/j;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lb5/v4;->g(Ljava/lang/String;Lb5/q;)V

    :goto_5
    return-object p1

    :cond_d
    :pswitch_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lb5/q;->c:Lb5/q;

    goto :goto_6

    :cond_e
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    instance-of p3, p1, Lb5/f;

    if-eqz p3, :cond_f

    check-cast p1, Lb5/f;

    invoke-virtual {p2, p1}, Lb5/v4;->c(Lb5/f;)Lb5/q;

    move-result-object p1

    goto :goto_6

    :cond_f
    sget-object p1, Lb5/q;->c:Lb5/q;

    :goto_6
    return-object p1

    :cond_10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lb5/q;->h:Lb5/q;

    goto :goto_7

    :cond_11
    sget-object p1, Lb5/n0;->r0:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    new-instance p2, Lb5/h;

    invoke-direct {p2, v6, p1}, Lb5/h;-><init>(Ljava/lang/String;Lb5/q;)V

    move-object p1, p2

    :goto_7
    return-object p1

    :cond_12
    new-instance p1, Lb5/f;

    invoke-direct {p1, p3}, Lb5/f;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_13
    sget-object p1, Lb5/n0;->b0:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, p3}, Lb5/w5;->i(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p2, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_14

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb5/q;

    invoke-virtual {p2, p3}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p3

    goto :goto_8

    :cond_14
    const/4 p3, 0x0

    :goto_8
    sget-object v1, Lb5/q;->c:Lb5/q;

    invoke-interface {p1}, Lb5/q;->g()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    check-cast v0, Lb5/f;

    invoke-virtual {p2, v0}, Lb5/v4;->c(Lb5/f;)Lb5/q;

    move-result-object p1

    goto :goto_9

    :cond_15
    if-eqz p3, :cond_16

    check-cast p3, Lb5/f;

    invoke-virtual {p2, p3}, Lb5/v4;->c(Lb5/f;)Lb5/q;

    move-result-object p1

    goto :goto_9

    :cond_16
    move-object p1, v1

    :goto_9
    instance-of p2, p1, Lb5/h;

    if-eqz p2, :cond_17

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-static {p2, p3}, Lb5/a0;->c(Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object p1

    return-object p1

    :cond_19
    sget-object p1, Lb5/n0;->y:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    sget-object p1, Lb5/q;->f:Lb5/q;

    return-object p1

    :cond_1a
    sget-object p1, Lb5/n0;->k:Lb5/n0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p2, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {v0}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb5/q;

    invoke-virtual {p2, p3}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p3

    instance-of v1, p3, Lb5/f;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    check-cast p3, Lb5/f;

    invoke-virtual {p3}, Lb5/f;->r()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lb5/q;->l(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object p1

    return-object p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function name for apply is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "Function arguments for Apply are not a list found %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
