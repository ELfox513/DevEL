.class public final Lr4/q23;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/w23;


# direct methods
.method public constructor <init>(Lr4/w23;)V
    .locals 0

    iput-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lr4/w23;->m(Lr4/w23;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {v2, v0}, Lr4/w23;->w(Lr4/w23;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lr4/v03;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->j()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/o23;

    invoke-direct {v1, v0}, Lr4/o23;-><init>(Lr4/w23;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {v0}, Lr4/w23;->k(Lr4/w23;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {p1}, Lr4/w23;->r(Lr4/w23;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {p1}, Lr4/w23;->s(Lr4/w23;)[I

    move-result-object v6

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {p1}, Lr4/w23;->t(Lr4/w23;)[Ljava/lang/Object;

    move-result-object v7

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {p1}, Lr4/w23;->u(Lr4/w23;)[Ljava/lang/Object;

    move-result-object v8

    move v4, v0

    invoke-static/range {v2 .. v8}, Lr4/x23;->e(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v1, p1, v0}, Lr4/w23;->o(II)V

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-static {p1}, Lr4/w23;->f(Lr4/w23;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lr4/w23;->g(Lr4/w23;I)I

    iget-object p1, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {p1}, Lr4/w23;->l()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/q23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->size()I

    move-result v0

    return v0
.end method
