.class public final Lb5/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lb5/p5;)Lb5/q;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lb5/q;->c:Lb5/q;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb5/p5;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lb5/p5;->w()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5/p5;

    invoke-static {v2}, Lb5/x6;->a(Lb5/p5;)Lb5/q;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb5/p5;->u()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lb5/r;

    invoke-direct {v0, p0, v1}, Lb5/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type found. Cannot convert entity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lb5/p5;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lb5/g;

    invoke-virtual {p0}, Lb5/p5;->x()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lb5/g;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_4
    new-instance p0, Lb5/g;

    invoke-direct {p0, v2}, Lb5/g;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lb5/p5;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lb5/i;

    invoke-virtual {p0}, Lb5/p5;->s()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_6
    new-instance p0, Lb5/i;

    invoke-direct {p0, v2}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lb5/p5;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lb5/u;

    invoke-virtual {p0}, Lb5/p5;->v()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb5/u;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget-object p0, Lb5/q;->l:Lb5/q;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lb5/q;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lb5/q;->e:Lb5/q;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lb5/u;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lb5/u;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    new-instance v0, Lb5/i;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    new-instance v0, Lb5/i;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-instance v0, Lb5/i;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    new-instance v0, Lb5/g;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lb5/g;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    new-instance v0, Lb5/n;

    invoke-direct {v0}, Lb5/n;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lb5/x6;->b(Ljava/lang/Object;)Lb5/q;

    move-result-object v3

    if-eqz v2, :cond_6

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lb5/n;->u(Ljava/lang/String;Lb5/q;)V

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_b

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Lb5/f;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lb5/x6;->b(Ljava/lang/Object;)Lb5/q;

    move-result-object v1

    invoke-virtual {v0}, Lb5/f;->i()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lb5/f;->y(ILb5/q;)V

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
