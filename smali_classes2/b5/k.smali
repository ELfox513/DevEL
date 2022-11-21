.class public final synthetic Lb5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lb5/m;Lb5/q;Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/m;",
            "Lb5/q;",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lb5/m;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lb5/m;->s(Ljava/lang/String;)Lb5/q;

    move-result-object p0

    instance-of v0, p0, Lb5/j;

    if-eqz v0, :cond_0

    check-cast p0, Lb5/j;

    invoke-virtual {p0, p2, p3}, Lb5/j;->a(Lb5/v4;Ljava/util/List;)Lb5/q;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "%s is not a function"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hasOwnProperty"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3, v2, p3}, Lb5/w5;->h(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/q;

    invoke-virtual {p2, p1}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lb5/m;->t(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lb5/q;->i:Lb5/q;

    return-object p0

    :cond_2
    sget-object p0, Lb5/q;->j:Lb5/q;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Object has no function %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb5/q;",
            ">;)",
            "Ljava/util/Iterator<",
            "Lb5/q;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lb5/l;

    invoke-direct {v0, p0}, Lb5/l;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
