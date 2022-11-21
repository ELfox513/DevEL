.class public final Lr4/on1;
.super Lr4/i40;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/zi1;

.field public final d:Lr4/ej1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/zi1;Lr4/ej1;)V
    .locals 0

    invoke-direct {p0}, Lr4/i40;-><init>()V

    iput-object p1, p0, Lr4/on1;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/on1;->b:Lr4/zi1;

    iput-object p3, p0, Lr4/on1;->d:Lr4/ej1;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->O()V

    return-void
.end method

.method public final E()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->j()Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final E3(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->E(Landroid/os/Bundle;)V

    return-void
.end method

.method public final G()Lr4/m20;
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->p()Lr4/bj1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/bj1;->a()Lr4/m20;

    move-result-object v0

    return-object v0
.end method

.method public final I()Lr4/hx;
    .locals 2

    sget-object v0, Lr4/rz;->b5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    return-object v0
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->h()Z

    move-result v0

    return v0
.end method

.method public final K()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->R()V

    return-void
.end method

.method public final N()V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->g()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lr4/p20;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->n()Lr4/p20;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()D
    .locals 2

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k1(Lr4/g40;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->N(Lr4/g40;)V

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lr4/h20;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->f0()Lr4/h20;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/i31;->b()V

    return-void
.end method

.method public final p()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    return-object v0
.end method

.method public final p4(Lr4/rw;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->Q(Lr4/rw;)V

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/on1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final r5(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->C(Landroid/os/Bundle;)V

    return-void
.end method

.method public final s3(Lr4/ex;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->q(Lr4/ex;)V

    return-void
.end method

.method public final t()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/on1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final v3(Lr4/uw;)V
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->P(Lr4/uw;)V

    return-void
.end method

.method public final x4(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lr4/on1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->D(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/on1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->d()Lr4/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
