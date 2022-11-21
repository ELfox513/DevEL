.class public final Lr4/eo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ro3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/ro3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/ao3;

.field public final b:Lr4/hp3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/hp3<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lr4/cm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/cm3<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/hp3;Lr4/cm3;Lr4/ao3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/hp3<",
            "**>;",
            "Lr4/cm3<",
            "*>;",
            "Lr4/ao3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {p2, p3}, Lr4/cm3;->a(Lr4/ao3;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/eo3;->c:Z

    iput-object p2, p0, Lr4/eo3;->d:Lr4/cm3;

    iput-object p3, p0, Lr4/eo3;->a:Lr4/ao3;

    return-void
.end method

.method public static b(Lr4/hp3;Lr4/cm3;Lr4/ao3;)Lr4/eo3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/hp3<",
            "**>;",
            "Lr4/cm3<",
            "*>;",
            "Lr4/ao3;",
            ")",
            "Lr4/eo3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/eo3;

    invoke-direct {v0, p0, p1, p2}, Lr4/eo3;-><init>(Lr4/hp3;Lr4/cm3;Lr4/ao3;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {v0, p1}, Lr4/hp3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {v1, p2}, Lr4/hp3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lr4/eo3;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    iget-object p1, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {p1, p2}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {v0, p1}, Lr4/hp3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/hp3;->p(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lr4/eo3;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {v0, p1}, Lr4/hp3;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/cm3;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lr4/xl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/xl3;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {p2, p1}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-static {v0, p1, p2}, Lr4/uo3;->f(Lr4/hp3;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lr4/eo3;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-static {v0, p1, p2}, Lr4/uo3;->e(Lr4/cm3;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;[BIILr4/xk3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lr4/xk3;",
            ")V"
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lr4/pm3;

    iget-object p3, p2, Lr4/pm3;->zzc:Lr4/ip3;

    invoke-static {}, Lr4/ip3;->a()Lr4/ip3;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/ip3;->b()Lr4/ip3;

    move-result-object p3

    iput-object p3, p2, Lr4/pm3;->zzc:Lr4/ip3;

    :goto_0
    check-cast p1, Lr4/mm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    invoke-virtual {v0, p1}, Lr4/hp3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lr4/eo3;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/cm3;->b(Ljava/lang/Object;)Lr4/gm3;

    const/4 p1, 0x0

    throw p1
.end method

.method public final j(Ljava/lang/Object;Lr4/lo3;Lr4/bm3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/lo3;",
            "Lr4/bm3;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->b:Lr4/hp3;

    iget-object v1, p0, Lr4/eo3;->d:Lr4/cm3;

    invoke-virtual {v0, p1}, Lr4/hp3;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lr4/cm3;->c(Ljava/lang/Object;)Lr4/gm3;

    move-result-object v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lr4/lo3;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    invoke-interface {p2}, Lr4/lo3;->b()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lr4/eo3;->a:Lr4/ao3;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lr4/cm3;->f(Lr4/bm3;Lr4/ao3;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2, v4, p3, v3}, Lr4/cm3;->g(Lr4/lo3;Ljava/lang/Object;Lr4/bm3;Lr4/gm3;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, p2}, Lr4/hp3;->n(Ljava/lang/Object;Lr4/lo3;)Z

    move-result v4

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lr4/lo3;->e()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lr4/hp3;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lr4/lo3;->a()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Lr4/lo3;->b()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lr4/lo3;->w()I

    move-result v4

    iget-object v6, p0, Lr4/eo3;->a:Lr4/ao3;

    invoke-virtual {v1, p3, v6, v4}, Lr4/cm3;->f(Lr4/bm3;Lr4/ao3;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v1, p2, v6, p3, v3}, Lr4/cm3;->g(Lr4/lo3;Ljava/lang/Object;Lr4/bm3;Lr4/gm3;)V

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Lr4/lo3;->m()Lr4/ll3;

    move-result-object v7

    goto :goto_2

    :cond_8
    invoke-interface {p2}, Lr4/lo3;->e()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_3
    invoke-interface {p2}, Lr4/lo3;->b()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v7, :cond_0

    if-eqz v6, :cond_9

    invoke-virtual {v1, v7, v6, p3, v3}, Lr4/cm3;->h(Lr4/ll3;Ljava/lang/Object;Lr4/bm3;Lr4/gm3;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v2, v4, v7}, Lr4/hp3;->e(Ljava/lang/Object;ILr4/ll3;)V

    goto :goto_0

    :cond_a
    invoke-static {}, Lr4/bn3;->h()Lr4/bn3;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    invoke-virtual {v0, p1, v2}, Lr4/hp3;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lr4/hp3;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/eo3;->a:Lr4/ao3;

    invoke-interface {v0}, Lr4/ao3;->b()Lr4/zn3;

    move-result-object v0

    invoke-interface {v0}, Lr4/zn3;->H()Lr4/ao3;

    move-result-object v0

    return-object v0
.end method
