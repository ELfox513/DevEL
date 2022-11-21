.class public Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/a$a;
    }
.end annotation


# instance fields
.field public final a:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/a;->a:Lb5/y2;

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lf5/a;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lb5/y2;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lb5/y2;

    move-result-object p0

    invoke-virtual {p0}, Lb5/y2;->r()Lf5/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->G(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1, p2, p3}, Lb5/y2;->H(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->I(Ljava/lang/String;)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1, p2}, Lb5/y2;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0}, Lb5/y2;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->o(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
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

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1, p2, p3}, Lb5/y2;->C(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1, p2, p3}, Lb5/y2;->K(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb5/y2;->q(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    return-void
.end method

.method public p(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lb5/y2;->q(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public q(Lf5/a$a;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->b(Lg5/d6;)V

    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public t(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1, p2, p3}, Lb5/y2;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lb5/y2;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final v(Z)V
    .locals 1

    iget-object v0, p0, Lf5/a;->a:Lb5/y2;

    invoke-virtual {v0, p1}, Lb5/y2;->f(Z)V

    return-void
.end method
