.class public final Lr4/ua0;
.super Lr4/wt0;
.source "SourceFile"


# instance fields
.field public final a:Lf5/a;


# direct methods
.method public constructor <init>(Lf5/a;)V
    .locals 0

    invoke-direct {p0}, Lr4/wt0;-><init>()V

    iput-object p1, p0, Lr4/ua0;->a:Lf5/a;

    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final B4(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public final G3(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final O4(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1, p2, p3}, Lf5/a;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->l(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final R5(Ljava/lang/String;Ljava/lang/String;Lf4/a;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lf5/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final U2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1, p2, p3}, Lf5/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i4(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1, p2}, Lf5/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->r(Landroid/os/Bundle;)V

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1}, Lf5/a;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method public final u1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0, p1, p2, p3}, Lf5/a;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    invoke-virtual {v0}, Lf5/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z3(Lf4/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ua0;->a:Lf5/a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lf5/a;->t(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
