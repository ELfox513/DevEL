.class public final Lr4/f82;
.super Lr4/qv;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/bu0;

.field public final d:Lr4/fp2;

.field public final k:Lr4/nj1;

.field public p:Lr4/iv;


# direct methods
.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lr4/qv;-><init>()V

    new-instance v0, Lr4/fp2;

    invoke-direct {v0}, Lr4/fp2;-><init>()V

    iput-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    new-instance v1, Lr4/nj1;

    invoke-direct {v1}, Lr4/nj1;-><init>()V

    iput-object v1, p0, Lr4/f82;->k:Lr4/nj1;

    iput-object p1, p0, Lr4/f82;->b:Lr4/bu0;

    invoke-virtual {v0, p3}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    iput-object p2, p0, Lr4/f82;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final F1(Lr4/iv;)V
    .locals 0

    iput-object p1, p0, Lr4/f82;->p:Lr4/iv;

    return-void
.end method

.method public final H3(Lr4/a40;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1}, Lr4/nj1;->c(Lr4/a40;)Lr4/nj1;

    return-void
.end method

.method public final R2(Lv2/g;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->h(Lv2/g;)Lr4/fp2;

    return-void
.end method

.method public final T1(Lr4/c80;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1}, Lr4/nj1;->e(Lr4/c80;)Lr4/nj1;

    return-void
.end method

.method public final T5(Ljava/lang/String;Lr4/t30;Lr4/q30;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1, p2, p3}, Lr4/nj1;->f(Ljava/lang/String;Lr4/t30;Lr4/q30;)Lr4/nj1;

    return-void
.end method

.method public final V0(Lr4/x30;Lr4/yt;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1}, Lr4/nj1;->d(Lr4/x30;)Lr4/nj1;

    iget-object p1, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {p1, p2}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    return-void
.end method

.method public final W2(Lr4/d20;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->e(Lr4/d20;)Lr4/fp2;

    return-void
.end method

.method public final b3(Lr4/k30;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1}, Lr4/nj1;->b(Lr4/k30;)Lr4/nj1;

    return-void
.end method

.method public final c()Lr4/ov;
    .locals 7

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0}, Lr4/nj1;->g()Lr4/pj1;

    move-result-object v5

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v5}, Lr4/pj1;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/fp2;->c(Ljava/util/ArrayList;)Lr4/fp2;

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v5}, Lr4/pj1;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/fp2;->d(Ljava/util/ArrayList;)Lr4/fp2;

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->K()Lr4/yt;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lr4/yt;->Y0()Lr4/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    :cond_0
    new-instance v0, Lr4/g82;

    iget-object v2, p0, Lr4/f82;->a:Landroid/content/Context;

    iget-object v3, p0, Lr4/f82;->b:Lr4/bu0;

    iget-object v4, p0, Lr4/f82;->d:Lr4/fp2;

    iget-object v6, p0, Lr4/f82;->p:Lr4/iv;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/g82;-><init>(Landroid/content/Context;Lr4/bu0;Lr4/fp2;Lr4/pj1;Lr4/iv;)V

    return-object v0
.end method

.method public final n2(Lr4/gw;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->o(Lr4/gw;)Lr4/fp2;

    return-void
.end method

.method public final o6(Lr4/n30;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->k:Lr4/nj1;

    invoke-virtual {v0, p1}, Lr4/nj1;->a(Lr4/n30;)Lr4/nj1;

    return-void
.end method

.method public final q2(Lv2/a;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->i(Lv2/a;)Lr4/fp2;

    return-void
.end method

.method public final r6(Lr4/s70;)V
    .locals 1

    iget-object v0, p0, Lr4/f82;->d:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->g(Lr4/s70;)Lr4/fp2;

    return-void
.end method
