.class public final Lr4/mn1;
.super Lr4/f30;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/ej1;

.field public d:Lr4/ek1;

.field public k:Lr4/zi1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/ej1;Lr4/ek1;Lr4/zi1;)V
    .locals 0

    invoke-direct {p0}, Lr4/f30;-><init>()V

    iput-object p1, p0, Lr4/mn1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/mn1;->b:Lr4/ej1;

    iput-object p3, p0, Lr4/mn1;->d:Lr4/ek1;

    iput-object p4, p0, Lr4/mn1;->k:Lr4/zi1;

    return-void
.end method

.method public static synthetic g7(Lr4/mn1;)Lr4/zi1;
    .locals 0

    iget-object p0, p0, Lr4/mn1;->k:Lr4/zi1;

    return-object p0
.end method


# virtual methods
.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->y()Lp/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/zi1;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c7(Lf4/a;)V
    .locals 1

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->u()Lf4/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lr4/zi1;->n(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->v()Lp/g;

    move-result-object v0

    iget-object v1, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v1}, Lr4/ej1;->y()Lp/g;

    move-result-object v1

    invoke-virtual {v0}, Lp/g;->size()I

    move-result v2

    invoke-virtual {v1}, Lp/g;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Lp/g;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v0, v4}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lp/g;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/zi1;->B()V

    :cond_0
    return-void
.end method

.method public final i()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    return-object v0
.end method

.method public final i0(Lf4/a;)Z
    .locals 2

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/mn1;->d:Lr4/ek1;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lr4/ek1;->d(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {p1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    new-instance v0, Lr4/ln1;

    invoke-direct {v0, p0}, Lr4/ln1;-><init>(Lr4/mn1;)V

    invoke-interface {p1, v0}, Lr4/cs0;->R0(Lr4/b20;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    iput-object v0, p0, Lr4/mn1;->d:Lr4/ek1;

    return-void
.end method

.method public final l()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/mn1;->a:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 3

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->u()Lf4/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v1

    invoke-interface {v1, v0}, Lr4/qe0;->zzf(Lf4/a;)V

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v0

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lr4/mn1;->k:Lr4/zi1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/zi1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->t()Lr4/cs0;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final s(Ljava/lang/String;)Lr4/p20;
    .locals 1

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->v()Lp/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/p20;

    return-object p1
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lr4/mn1;->b:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Not starting OMID session. OM partner name has not been configured."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lr4/mn1;->k:Lr4/zi1;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lr4/zi1;->l(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
