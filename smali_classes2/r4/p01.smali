.class public final Lr4/p01;
.super Lr4/i31;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/View;

.field public final j:Lr4/cs0;

.field public final k:Lr4/qo2;

.field public final l:I

.field public final m:Z

.field public final n:Z

.field public final o:Lr4/h01;

.field public p:Lr4/io;


# direct methods
.method public constructor <init>(Lr4/h31;Landroid/view/View;Lr4/cs0;Lr4/qo2;IZZLr4/h01;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/i31;-><init>(Lr4/h31;)V

    iput-object p2, p0, Lr4/p01;->i:Landroid/view/View;

    iput-object p3, p0, Lr4/p01;->j:Lr4/cs0;

    iput-object p4, p0, Lr4/p01;->k:Lr4/qo2;

    iput p5, p0, Lr4/p01;->l:I

    iput-boolean p6, p0, Lr4/p01;->m:Z

    iput-boolean p7, p0, Lr4/p01;->n:Z

    iput-object p8, p0, Lr4/p01;->o:Lr4/h01;

    return-void
.end method


# virtual methods
.method public final g()Lr4/qo2;
    .locals 2

    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->r:Ljava/util/List;

    iget-object v1, p0, Lr4/p01;->k:Lr4/qo2;

    invoke-static {v0, v1}, Lr4/lp2;->a(Ljava/util/List;Lr4/qo2;)Lr4/qo2;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/p01;->i:Landroid/view/View;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lr4/p01;->l:I

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lr4/p01;->m:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lr4/p01;->n:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lr4/p01;->j:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/p01;->j:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    invoke-interface {v0}, Lr4/st0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lr4/p01;->j:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lr4/bo;)V
    .locals 1

    iget-object v0, p0, Lr4/p01;->j:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->z0(Lr4/bo;)V

    return-void
.end method

.method public final o(JI)V
    .locals 1

    iget-object v0, p0, Lr4/p01;->o:Lr4/h01;

    invoke-virtual {v0, p1, p2, p3}, Lr4/h01;->a(JI)V

    return-void
.end method

.method public final p(Lr4/io;)V
    .locals 0

    iput-object p1, p0, Lr4/p01;->p:Lr4/io;

    return-void
.end method

.method public final q()Lr4/io;
    .locals 1

    iget-object v0, p0, Lr4/p01;->p:Lr4/io;

    return-object v0
.end method
