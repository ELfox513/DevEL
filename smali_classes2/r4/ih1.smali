.class public final Lr4/ih1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j71;
.implements Lr4/me1;


# instance fields
.field public final a:Lr4/pj0;

.field public final b:Landroid/content/Context;

.field public final d:Lr4/ik0;

.field public final k:Landroid/view/View;

.field public p:Ljava/lang/String;

.field public final q:Lr4/qp;


# direct methods
.method public constructor <init>(Lr4/pj0;Landroid/content/Context;Lr4/ik0;Landroid/view/View;Lr4/qp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ih1;->a:Lr4/pj0;

    iput-object p2, p0, Lr4/ih1;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/ih1;->d:Lr4/ik0;

    iput-object p4, p0, Lr4/ih1;->k:Landroid/view/View;

    iput-object p5, p0, Lr4/ih1;->q:Lr4/qp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lr4/ih1;->d:Lr4/ik0;

    iget-object v1, p0, Lr4/ih1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/ik0;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/ih1;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/ih1;->q:Lr4/qp;

    sget-object v2, Lr4/qp;->t:Lr4/qp;

    if-ne v1, v2, :cond_0

    const-string v1, "/Rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "/Interstitial"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lr4/ih1;->p:Ljava/lang/String;

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/ih1;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/ih1;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/ih1;->d:Lr4/ik0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lr4/ih1;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lr4/ik0;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lr4/ih1;->a:Lr4/pj0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/pj0;->a(Z)V

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/ih1;->a:Lr4/pj0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/pj0;->a(Z)V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final q(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object p2, p0, Lr4/ih1;->d:Lr4/ik0;

    iget-object p3, p0, Lr4/ih1;->b:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lr4/ik0;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/ih1;->d:Lr4/ik0;

    iget-object v1, p0, Lr4/ih1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/ik0;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lr4/ih1;->a:Lr4/pj0;

    invoke-virtual {p2}, Lr4/pj0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lr4/eh0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lr4/eh0;->b()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lr4/ik0;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
