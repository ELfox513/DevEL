.class public final Lr4/d82;
.super Lr4/uv;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/iv;

.field public final d:Lr4/hp2;

.field public final k:Lr4/h11;

.field public final p:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/iv;Lr4/hp2;Lr4/h11;)V
    .locals 0

    invoke-direct {p0}, Lr4/uv;-><init>()V

    iput-object p1, p0, Lr4/d82;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/d82;->b:Lr4/iv;

    iput-object p3, p0, Lr4/d82;->d:Lr4/hp2;

    iput-object p4, p0, Lr4/d82;->k:Lr4/h11;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p4}, Lr4/h11;->g()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p3

    invoke-virtual {p3}, Lb3/g;->j()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lr4/d82;->t()Lr4/yt;

    move-result-object p1

    iget p1, p1, Lr4/yt;->d:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lr4/d82;->t()Lr4/yt;

    move-result-object p1

    iget p1, p1, Lr4/yt;->q:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object p2, p0, Lr4/d82;->p:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final A0(Z)V
    .locals 0

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b71;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final B2(Lr4/ff0;)V
    .locals 0

    return-void
.end method

.method public final B6(Lr4/ev;)V
    .locals 0

    const-string p1, "setAdClickListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final C1(Lr4/n00;)V
    .locals 0

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final D1(Lr4/eu;)V
    .locals 0

    return-void
.end method

.method public final E5(Lr4/kf0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final G1(Lr4/lh0;)V
    .locals 0

    return-void
.end method

.method public final H6(Lr4/zv;)V
    .locals 0

    const-string p1, "setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final J4(Z)V
    .locals 0

    const-string p1, "setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final L()Lr4/iv;
    .locals 1

    iget-object v0, p0, Lr4/d82;->b:Lr4/iv;

    return-object v0
.end method

.method public final L1(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/d82;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final Q5(Lr4/tt;Lr4/lv;)V
    .locals 0

    return-void
.end method

.method public final S0(Lr4/yt;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/d82;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lr4/h11;->h(Landroid/view/ViewGroup;Lr4/yt;)V

    :cond_0
    return-void
.end method

.method public final S1(Lr4/iv;)V
    .locals 0

    const-string p1, "setAdListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final S5(Lr4/px;)V
    .locals 0

    return-void
.end method

.method public final X4(Lr4/ex;)V
    .locals 0

    const-string p1, "setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final Y1(Lr4/go;)V
    .locals 0

    return-void
.end method

.method public final Z1(Lr4/xy;)V
    .locals 0

    const-string p1, "setVideoOptions is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->b()V

    return-void
.end method

.method public final h4(Lr4/gw;)V
    .locals 0

    const-string p1, "setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/d82;->p:Landroid/view/ViewGroup;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->T0(Landroid/content/Context;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/h11;->m()V

    return-void
.end method

.method public final p()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->c()Lr4/j81;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->Z0(Landroid/content/Context;)V

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final s5(Lr4/kw;)V
    .locals 0

    return-void
.end method

.method public final t()Lr4/yt;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/d82;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v1}, Lr4/h11;->j()Lr4/qo2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b71;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v4(Lr4/cw;)V
    .locals 1

    iget-object v0, p0, Lr4/d82;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->c:Lr4/d92;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/d92;->z(Lr4/cw;)V

    :cond_0
    return-void
.end method

.method public final w()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata is not supported in Ad Manager AdView returned by AdLoader."

    invoke-static {v0}, Lr4/cm0;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final w0()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/h11;->i()Lr4/lx;

    move-result-object v0

    return-object v0
.end method

.method public final w5(Lr4/tt;)Z
    .locals 0

    const-string p1, "loadAd is not supported for an Ad Manager AdView returned from AdLoader."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final x1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final x3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final y()Lr4/cw;
    .locals 1

    iget-object v0, p0, Lr4/d82;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->n:Lr4/cw;

    return-object v0
.end method

.method public final z()Lr4/hx;
    .locals 1

    iget-object v0, p0, Lr4/d82;->k:Lr4/h11;

    invoke-virtual {v0}, Lr4/i31;->d()Lr4/b71;

    move-result-object v0

    return-object v0
.end method
