.class public final Le5/a;
.super Le5/d;
.source "SourceFile"


# instance fields
.field public final a:Lg5/b5;

.field public final b:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le5/d;-><init>(Le5/c;)V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    iput-object p1, p0, Le5/a;->b:Lg5/i7;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ia;->r0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0, p1, p2}, Lg5/i7;->b0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->c0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0, p1}, Lg5/i7;->y(Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0}, Lg5/i7;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    iget-object v1, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lg5/d2;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0}, Lg5/i7;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0}, Lg5/i7;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0}, Lg5/i7;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->h0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    iget-object v1, p0, Le5/a;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lg5/d2;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public final q(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Le5/a;->b:Lg5/i7;

    invoke-virtual {v0, p1}, Lg5/i7;->S(Ljava/lang/String;)I

    const/16 p1, 0x19

    return p1
.end method
