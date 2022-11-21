.class public final Lz4/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz4/f2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lz4/r1;

.field public final b:Lz4/x2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/x2<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lz4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/c0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz4/x2;Lz4/c0;Lz4/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/x2<",
            "**>;",
            "Lz4/c0<",
            "*>;",
            "Lz4/r1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {p2, p3}, Lz4/c0;->f(Lz4/r1;)Z

    move-result p1

    iput-boolean p1, p0, Lz4/w1;->c:Z

    iput-object p2, p0, Lz4/w1;->d:Lz4/c0;

    iput-object p3, p0, Lz4/w1;->a:Lz4/r1;

    return-void
.end method

.method public static f(Lz4/x2;Lz4/c0;Lz4/r1;)Lz4/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz4/x2<",
            "**>;",
            "Lz4/c0<",
            "*>;",
            "Lz4/r1;",
            ")",
            "Lz4/w1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz4/w1;

    invoke-direct {v0, p0, p1, p2}, Lz4/w1;-><init>(Lz4/x2;Lz4/c0;Lz4/r1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz4/x2;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lz4/w1;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v1, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    invoke-virtual {p1}, Lz4/f0;->p()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-static {v0, p1, p2}, Lz4/h2;->g(Lz4/x2;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lz4/w1;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-static {v0, p1, p2}, Lz4/h2;->e(Lz4/c0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Lz4/r3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz4/r3;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object v0

    invoke-virtual {v0}, Lz4/f0;->d()Ljava/util/Iterator;

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

    check-cast v2, Lz4/h0;

    invoke-interface {v2}, Lz4/h0;->q()Lz4/q3;

    move-result-object v3

    sget-object v4, Lz4/q3;->u:Lz4/q3;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lz4/h0;->s()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lz4/h0;->m()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lz4/w0;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lz4/h0;->g()I

    move-result v2

    check-cast v1, Lz4/w0;

    invoke-virtual {v1}, Lz4/w0;->a()Lz4/u0;

    move-result-object v1

    invoke-virtual {v1}, Lz4/y0;->a()Lz4/i;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lz4/r3;->k(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lz4/h0;->g()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lz4/r3;->k(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lz4/x2;->b(Ljava/lang/Object;Lz4/r3;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    invoke-virtual {p1}, Lz4/f0;->c()Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v1, p2}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lz4/w1;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    iget-object v0, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v0, p2}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz4/f0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lz4/w1;->b:Lz4/x2;

    invoke-virtual {v0, p1}, Lz4/x2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lz4/w1;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz4/w1;->d:Lz4/c0;

    invoke-virtual {v1, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lz4/f0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
