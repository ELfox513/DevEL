.class public final Lr4/fn1;
.super Lr4/u70;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lr4/y10;


# instance fields
.field public a:Landroid/view/View;

.field public b:Lr4/lx;

.field public d:Lr4/zi1;

.field public k:Z

.field public p:Z


# direct methods
.method public constructor <init>(Lr4/zi1;Lr4/ej1;)V
    .locals 1

    invoke-direct {p0}, Lr4/u70;-><init>()V

    invoke-virtual {p2}, Lr4/ej1;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lr4/fn1;->a:Landroid/view/View;

    invoke-virtual {p2}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    iput-object v0, p0, Lr4/fn1;->b:Lr4/lx;

    iput-object p1, p0, Lr4/fn1;->d:Lr4/zi1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/fn1;->k:Z

    iput-boolean p1, p0, Lr4/fn1;->p:Z

    invoke-virtual {p2}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    invoke-interface {p1, p0}, Lr4/cs0;->h0(Lr4/y10;)V

    :cond_0
    return-void
.end method

.method public static final f7(Lr4/z70;I)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lr4/z70;->C(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final M(Lf4/a;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    new-instance v0, Lr4/en1;

    invoke-direct {v0, p0}, Lr4/en1;-><init>(Lr4/fn1;)V

    invoke-virtual {p0, p1, v0}, Lr4/fn1;->u4(Lf4/a;Lr4/z70;)V

    return-void
.end method

.method public final a()Lr4/lx;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/fn1;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/fn1;->b:Lr4/lx;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/fn1;->g()V

    iget-object v0, p0, Lr4/fn1;->d:Lr4/zi1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/i31;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/fn1;->d:Lr4/zi1;

    iput-object v0, p0, Lr4/fn1;->a:Landroid/view/View;

    iput-object v0, p0, Lr4/fn1;->b:Lr4/lx;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/fn1;->k:Z

    return-void
.end method

.method public final d()Lr4/m20;
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/fn1;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lr4/fn1;->d:Lr4/zi1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/zi1;->p()Lr4/bj1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/fn1;->d:Lr4/zi1;

    invoke-virtual {v0}, Lr4/zi1;->p()Lr4/bj1;

    move-result-object v0

    invoke-virtual {v0}, Lr4/bj1;->a()Lr4/m20;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lr4/fn1;->d:Lr4/zi1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/fn1;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lr4/fn1;->a:Landroid/view/View;

    invoke-static {v4}, Lr4/zi1;->i(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/zi1;->J(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/fn1;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lr4/fn1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    invoke-virtual {p0}, Lr4/fn1;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-virtual {p0}, Lr4/fn1;->f()V

    return-void
.end method

.method public final u4(Lf4/a;Lr4/z70;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/fn1;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "Instream ad can not be shown after destroy()."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lr4/fn1;->f7(Lr4/z70;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/fn1;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lr4/fn1;->b:Lr4/lx;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lr4/fn1;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "Instream ad should not be used again."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lr4/fn1;->f7(Lr4/z70;I)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lr4/fn1;->p:Z

    invoke-virtual {p0}, Lr4/fn1;->g()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lr4/fn1;->a:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lz2/t;->A()Lr4/dn0;

    iget-object p1, p0, Lr4/fn1;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lr4/dn0;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lz2/t;->A()Lr4/dn0;

    iget-object p1, p0, Lr4/fn1;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lr4/dn0;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Lr4/fn1;->f()V

    :try_start_0
    invoke-interface {p2}, Lr4/z70;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-string p1, "can not get video view."

    goto :goto_1

    :cond_4
    const-string p1, "can not get video controller."

    :goto_1
    const-string v0, "Instream internal error: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lr4/fn1;->f7(Lr4/z70;I)V

    return-void
.end method

.method public final zza()V
    .locals 2

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/dn1;

    invoke-direct {v1, p0}, Lr4/dn1;-><init>(Lr4/fn1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
