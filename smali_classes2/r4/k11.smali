.class public final Lr4/k11;
.super Lr4/h11;
.source "SourceFile"


# instance fields
.field public final i:Landroid/content/Context;

.field public final j:Landroid/view/View;

.field public final k:Lr4/cs0;

.field public final l:Lr4/qo2;

.field public final m:Lr4/g31;

.field public final n:Lr4/pj1;

.field public final o:Lr4/ef1;

.field public final p:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/d82;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lr4/yt;


# direct methods
.method public constructor <init>(Lr4/h31;Landroid/content/Context;Lr4/qo2;Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/pj1;Lr4/ef1;Lr4/or3;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h31;",
            "Landroid/content/Context;",
            "Lr4/qo2;",
            "Landroid/view/View;",
            "Lr4/cs0;",
            "Lr4/g31;",
            "Lr4/pj1;",
            "Lr4/ef1;",
            "Lr4/or3<",
            "Lr4/d82;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/h11;-><init>(Lr4/h31;)V

    iput-object p2, p0, Lr4/k11;->i:Landroid/content/Context;

    iput-object p4, p0, Lr4/k11;->j:Landroid/view/View;

    iput-object p5, p0, Lr4/k11;->k:Lr4/cs0;

    iput-object p3, p0, Lr4/k11;->l:Lr4/qo2;

    iput-object p6, p0, Lr4/k11;->m:Lr4/g31;

    iput-object p7, p0, Lr4/k11;->n:Lr4/pj1;

    iput-object p8, p0, Lr4/k11;->o:Lr4/ef1;

    iput-object p9, p0, Lr4/k11;->p:Lr4/or3;

    iput-object p10, p0, Lr4/k11;->q:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/k11;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/j11;

    invoke-direct {v1, p0}, Lr4/j11;-><init>(Lr4/k11;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lr4/i31;->a()V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/k11;->j:Landroid/view/View;

    return-object v0
.end method

.method public final h(Landroid/view/ViewGroup;Lr4/yt;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr4/k11;->k:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lr4/vt0;->a(Lr4/yt;)Lr4/vt0;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/cs0;->u0(Lr4/vt0;)V

    iget v0, p2, Lr4/yt;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget v0, p2, Lr4/yt;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lr4/k11;->r:Lr4/yt;

    :cond_0
    return-void
.end method

.method public final i()Lr4/lx;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/k11;->m:Lr4/g31;

    invoke-interface {v0}, Lr4/g31;->zza()Lr4/lx;

    move-result-object v0
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lr4/qo2;
    .locals 4

    iget-object v0, p0, Lr4/k11;->r:Lr4/yt;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr4/lp2;->c(Lr4/yt;)Lr4/qo2;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-boolean v1, v0, Lr4/no2;->Y:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lr4/no2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "FirstParty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    new-instance v0, Lr4/qo2;

    iget-object v1, p0, Lr4/k11;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lr4/k11;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr4/qo2;-><init>(IIZ)V

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->r:Ljava/util/List;

    iget-object v1, p0, Lr4/k11;->l:Lr4/qo2;

    invoke-static {v0, v1}, Lr4/lp2;->a(Ljava/util/List;Lr4/qo2;)Lr4/qo2;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lr4/qo2;
    .locals 1

    iget-object v0, p0, Lr4/k11;->l:Lr4/qo2;

    return-object v0
.end method

.method public final l()I
    .locals 2

    sget-object v0, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/i31;->b:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->d0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lr4/rz;->C5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lr4/i31;->a:Lr4/bp2;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget v0, v0, Lr4/so2;->c:I

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lr4/k11;->o:Lr4/ef1;

    invoke-virtual {v0}, Lr4/ef1;->zza()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 3

    iget-object v0, p0, Lr4/k11;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->d()Lr4/x30;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lr4/k11;->n:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->d()Lr4/x30;

    move-result-object v0

    iget-object v1, p0, Lr4/k11;->p:Lr4/or3;

    invoke-interface {v1}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/vv;

    iget-object v2, p0, Lr4/k11;->i:Landroid/content/Context;

    invoke-static {v2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lr4/x30;->t4(Lr4/vv;Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
