.class public La3/n;
.super Lr4/ve0;
.source "SourceFile"

# interfaces
.implements La3/b0;


# static fields
.field public static final F:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public final a:Landroid/app/Activity;

.field public b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public d:Lr4/cs0;

.field public k:La3/j;

.field public p:La3/s;

.field public q:Z

.field public r:Landroid/widget/FrameLayout;

.field public s:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public t:Z

.field public u:Z

.field public v:La3/i;

.field public w:Z

.field public final x:Ljava/lang/Object;

.field public y:Ljava/lang/Runnable;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, La3/n;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lr4/ve0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La3/n;->q:Z

    iput-boolean v0, p0, La3/n;->t:Z

    iput-boolean v0, p0, La3/n;->u:Z

    iput-boolean v0, p0, La3/n;->w:Z

    const/4 v1, 0x1

    iput v1, p0, La3/n;->E:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, La3/n;->x:Ljava/lang/Object;

    iput-boolean v0, p0, La3/n;->B:Z

    iput-boolean v0, p0, La3/n;->C:Z

    iput-boolean v1, p0, La3/n;->D:Z

    iput-object p1, p0, La3/n;->a:Landroid/app/Activity;

    return-void
.end method

.method public static final k7(Lf4/a;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/t;->s()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    iget-object v0, p0, La3/n;->v:La3/i;

    iget-object v1, p0, La3/n;->p:La3/s;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La3/n;->N4(Z)V

    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, La3/n;->v:La3/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, La3/i;->b:Z

    return-void
.end method

.method public final N()V
    .locals 3

    iget-object v0, p0, La3/n;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, La3/n;->z:Z

    iget-object v1, p0, La3/n;->y:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v2, Lb3/k2;->i:Lr4/c03;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, La3/n;->y:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final N4(Z)V
    .locals 6

    sget-object v0, Lr4/rz;->n3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lr4/rz;->L0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-instance v4, La3/r;

    invoke-direct {v4}, La3/r;-><init>()V

    const/16 v5, 0x32

    iput v5, v4, La3/r;->d:I

    if-eq v3, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iput v5, v4, La3/r;->a:I

    if-eq v3, v1, :cond_3

    move v2, v0

    :cond_3
    iput v2, v4, La3/r;->b:I

    iput v0, v4, La3/r;->c:I

    new-instance v0, La3/s;

    iget-object v2, p0, La3/n;->a:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p0}, La3/s;-><init>(Landroid/content/Context;La3/r;La3/b0;)V

    iput-object v0, p0, La3/n;->p:La3/s;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eq v3, v1, :cond_4

    const/16 v1, 0x9

    goto :goto_3

    :cond_4
    const/16 v1, 0xb

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Z

    invoke-virtual {p0, p1, v1}, La3/n;->l7(ZZ)V

    iget-object p1, p0, La3/n;->v:La3/i;

    iget-object v1, p0, La3/n;->p:La3/s;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, La3/n;->E:I

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, La3/n;->q:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u:I

    invoke-virtual {p0, v0}, La3/n;->n7(I)V

    :cond_0
    iget-object v0, p0, La3/n;->r:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    iget-object v2, p0, La3/n;->v:La3/i;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La3/n;->A:Z

    iget-object v0, p0, La3/n;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, La3/n;->r:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, La3/n;->s:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, La3/n;->s:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, La3/n;->q:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La3/n;->E:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->c()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La3/n;->E:I

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final g()Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, La3/n;->E:I

    iget-object v1, p0, La3/n;->d:Lr4/cs0;

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->b1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, La3/n;->d:Lr4/cs0;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    invoke-interface {v1, v3, v2}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return v0
.end method

.method public final g7()V
    .locals 5

    iget-boolean v0, p0, La3/n;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La3/n;->C:Z

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_3

    iget-object v1, p0, La3/n;->v:La3/i;

    invoke-interface {v0}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, La3/n;->k:La3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, La3/n;->d:Lr4/cs0;

    iget-object v0, v0, La3/j;->d:Landroid/content/Context;

    invoke-interface {v2, v0}, Lr4/cs0;->q0(Landroid/content/Context;)V

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lr4/cs0;->Y0(Z)V

    iget-object v0, p0, La3/n;->k:La3/j;

    iget-object v0, v0, La3/j;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, La3/n;->k:La3/j;

    iget v4, v3, La3/j;->a:I

    iget-object v3, v3, La3/j;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, La3/n;->k:La3/j;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    iget-object v2, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lr4/cs0;->q0(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iput-object v1, p0, La3/n;->d:Lr4/cs0;

    :cond_3
    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_4

    iget v1, p0, La3/n;->E:I

    invoke-interface {v0, v1}, La3/q;->C6(I)V

    :cond_4
    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lr4/cs0;->B0()Lf4/a;

    move-result-object v0

    iget-object v1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, La3/n;->k7(Lf4/a;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lr4/rz;->l3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/cs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final h7()V
    .locals 1

    iget-boolean v0, p0, La3/n;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La3/n;->w:Z

    invoke-virtual {p0}, La3/n;->i7()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->e3()V

    :cond_0
    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, La3/n;->j7(Landroid/content/res/Configuration;)V

    sget-object v0, Lr4/rz;->l3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr4/cs0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final i0(Lf4/a;)V
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, La3/n;->j7(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final i7()V
    .locals 1

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->k0()V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final j7(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lz2/j;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v3

    iget-object v4, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lb3/g;->o(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    iget-boolean v3, p0, La3/n;->u:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lz2/j;->r:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iget-object p1, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget-object v0, Lr4/rz;->M0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    goto :goto_2

    :cond_4
    const/16 v0, 0x1504

    goto :goto_2

    :cond_5
    const/16 v0, 0x100

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_6
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, La3/n;->b()V

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->A2()V

    :cond_0
    sget-object v0, Lr4/rz;->l3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_2

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/n;->k:La3/j;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onPause()V

    :cond_2
    invoke-virtual {p0}, La3/n;->q7()V

    return-void
.end method

.method public l0(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, La3/n;->t:Z

    const/4 v2, 0x4

    :try_start_0
    iget-object v3, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->X0(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->x:Lr4/im0;

    iget v3, v3, Lr4/im0;->d:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_1

    iput v2, p0, La3/n;->E:I

    :cond_1
    iget-object v3, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, La3/n;->D:Z

    :cond_2
    iget-object v3, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    const/4 v5, 0x5

    if-eqz v4, :cond_3

    iget-boolean v6, v4, Lz2/j;->a:Z

    iput-boolean v6, p0, La3/n;->u:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_3
    iget v6, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    if-ne v6, v5, :cond_4

    iput-boolean v1, p0, La3/n;->u:Z

    :goto_1
    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    if-eq v3, v5, :cond_5

    iget v3, v4, Lz2/j;->q:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    new-instance v3, La3/m;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, La3/m;-><init>(La3/n;La3/k;)V

    invoke-virtual {v3}, Lb3/d0;->c()Lr4/h83;

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, La3/n;->u:Z

    :cond_5
    :goto_2
    if-nez p1, :cond_9

    iget-boolean p1, p0, La3/n;->D:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->I:Lr4/w71;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lr4/w71;->b()V

    :cond_6
    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz p1, :cond_7

    invoke-interface {p1}, La3/q;->j0()V

    :cond_7
    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v3, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    if-eq v3, v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lr4/gt;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lr4/gt;->F0()V

    :cond_8
    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J:Lr4/cf1;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lr4/cf1;->a()V

    :cond_9
    new-instance p1, La3/i;

    iget-object v3, p0, La3/n;->a:Landroid/app/Activity;

    iget-object v4, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->y:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->x:Lr4/im0;

    iget-object v7, v7, Lr4/im0;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->H:Ljava/lang/String;

    invoke-direct {p1, v3, v6, v7, v4}, La3/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, La3/n;->v:La3/i;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p1

    iget-object v3, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lb3/g;->q(Landroid/app/Activity;)V

    iget-object p1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v3, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    if-eq v3, v1, :cond_d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/4 p1, 0x3

    if-eq v3, p1, :cond_b

    if-ne v3, v5, :cond_a

    invoke-virtual {p0, v0}, La3/n;->p7(Z)V

    return-void

    :cond_a
    new-instance p1, La3/h;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, La3/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {p0, v1}, La3/n;->p7(Z)V

    return-void

    :cond_c
    new-instance v1, La3/j;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    invoke-direct {v1, p1}, La3/j;-><init>(Lr4/cs0;)V

    iput-object v1, p0, La3/n;->k:La3/j;

    invoke-virtual {p0, v0}, La3/n;->p7(Z)V

    return-void

    :cond_d
    invoke-virtual {p0, v0}, La3/n;->p7(Z)V

    return-void

    :cond_e
    new-instance p1, La3/h;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, La3/h;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch La3/h; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iput v2, p0, La3/n;->E:I

    iget-object p1, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final l7(ZZ)V
    .locals 6

    sget-object v0, Lr4/rz;->J0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lz2/j;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lr4/rz;->K0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lz2/j;->t:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    new-instance p1, Lr4/fe0;

    iget-object v4, p0, La3/n;->d:Lr4/cs0;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v4}, Lr4/fe0;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, La3/n;->p:La3/s;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, La3/s;->a(Z)V

    :cond_5
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, La3/n;->v:La3/i;

    invoke-interface {v0}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, La3/n;->q7()V

    return-void
.end method

.method public final m2(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final m7(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, La3/n;->v:La3/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    iget-object p1, p0, La3/n;->v:La3/i;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final n7(I)V
    .locals 3

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lr4/rz;->m4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lr4/rz;->n4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lr4/rz;->o4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    sget-object v1, Lr4/rz;->p4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 2

    sget-object v0, Lr4/rz;->l3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_1

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/n;->k:La3/j;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->onPause()V

    :cond_1
    invoke-virtual {p0}, La3/n;->q7()V

    return-void
.end method

.method public final o7(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, La3/n;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La3/n;->r:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, La3/n;->r:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p1, p0, La3/n;->a:Landroid/app/Activity;

    iget-object v0, p0, La3/n;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, La3/n;->A:Z

    iput-object p2, p0, La3/n;->s:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, La3/n;->q:Z

    return-void
.end method

.method public final p7(Z)V
    .locals 27

    move-object/from16 v9, p0

    iget-boolean v0, v9, La3/n;->A:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, v9, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, v9, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v2, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lr4/st0;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v4, v9, La3/n;->w:Z

    if-eqz v2, :cond_6

    iget-object v5, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    iget-object v5, v9, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v9, La3/n;->w:Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    iget-object v5, v9, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, v9, La3/n;->w:Z

    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object v4, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u:I

    invoke-virtual {v9, v4}, La3/n;->n7(I)V

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-boolean v0, v9, La3/n;->u:Z

    if-nez v0, :cond_7

    iget-object v0, v9, La3/n;->v:La3/i;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_7
    iget-object v0, v9, La3/n;->v:La3/i;

    sget v4, La3/n;->F:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    iget-object v0, v9, La3/n;->a:Landroid/app/Activity;

    iget-object v4, v9, La3/n;->v:La3/i;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v1, v9, La3/n;->A:Z

    if-eqz p1, :cond_e

    :try_start_0
    invoke-static {}, Lz2/t;->e()Lr4/os0;

    iget-object v10, v9, La3/n;->a:Landroid/app/Activity;

    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_8
    move-object v11, v3

    :goto_4
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lr4/cs0;->P()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_9
    move-object v12, v3

    :goto_5
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->x:Lr4/im0;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lr4/cs0;->i()Lz2/a;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_6

    :cond_a
    move-object/from16 v20, v3

    :goto_6
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Lr4/ip;->a()Lr4/ip;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move v14, v2

    move-object/from16 v17, v4

    invoke-static/range {v10 .. v23}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    iput-object v0, v9, La3/n;->d:Lr4/cs0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v10

    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->A:Lr4/t40;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lr4/v40;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->t:La3/x;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    invoke-interface {v0}, Lr4/st0;->b()Lz2/b;

    move-result-object v3

    :cond_b
    move-object/from16 v18, v3

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v10 .. v26}, Lr4/st0;->d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V

    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    new-instance v3, La3/f;

    invoke-direct {v3, v9}, La3/f;-><init>(La3/n;)V

    invoke-interface {v0, v3}, Lr4/st0;->s0(Lr4/qt0;)V

    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->w:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0, v3}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->s:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v10, v9, La3/n;->d:Lr4/cs0;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "text/html"

    const-string v14, "UTF-8"

    invoke-interface/range {v10 .. v15}, Lr4/cs0;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_f

    invoke-interface {v0, v9}, Lr4/cs0;->X0(La3/n;)V

    goto :goto_8

    :cond_d
    new-instance v0, La3/h;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, La3/h;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining webview."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, La3/h;

    const-string v1, "Could not obtain webview for the overlay."

    invoke-direct {v0, v1}, La3/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    iput-object v0, v9, La3/n;->d:Lr4/cs0;

    iget-object v3, v9, La3/n;->a:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lr4/cs0;->q0(Landroid/content/Context;)V

    :cond_f
    :goto_8
    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0, v9}, Lr4/cs0;->d1(La3/n;)V

    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lr4/cs0;->B0()Lf4/a;

    move-result-object v0

    iget-object v3, v9, La3/n;->v:La3/i;

    invoke-static {v0, v3}, La3/n;->k7(Lf4/a;Landroid/view/View;)V

    :cond_10
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v4}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iget-boolean v0, v9, La3/n;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->R()V

    :cond_12
    iget-object v0, v9, La3/n;->v:La3/i;

    iget-object v4, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v4}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_13
    if-nez p1, :cond_14

    iget-boolean v0, v9, La3/n;->w:Z

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, La3/n;->i7()V

    :cond_14
    iget-object v0, v9, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    if-eq v4, v3, :cond_16

    invoke-virtual {v9, v2}, La3/n;->N4(Z)V

    iget-object v0, v9, La3/n;->d:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->O0()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v9, v2, v1}, La3/n;->l7(ZZ)V

    :cond_15
    return-void

    :cond_16
    iget-object v1, v9, La3/n;->a:Landroid/app/Activity;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->F:Lb3/y0;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->C:Lr4/c12;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->D:Lr4/ls1;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->E:Lr4/xt2;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->B:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->G:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lr4/k12;->g7(Landroid/app/Activity;La3/n;Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v0, La3/h;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, La3/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q7()V
    .locals 5

    iget-object v0, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, La3/n;->B:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La3/n;->B:Z

    iget-object v0, p0, La3/n;->d:Lr4/cs0;

    if-eqz v0, :cond_3

    iget v1, p0, La3/n;->E:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lr4/cs0;->x0(I)V

    iget-object v0, p0, La3/n;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La3/n;->z:Z

    if-nez v1, :cond_2

    iget-object v1, p0, La3/n;->d:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->U0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lr4/rz;->j3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, La3/n;->C:Z

    if-nez v1, :cond_1

    iget-object v1, p0, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v1, :cond_1

    invoke-interface {v1}, La3/q;->e()V

    :cond_1
    new-instance v1, La3/g;

    invoke-direct {v1, p0}, La3/g;-><init>(La3/n;)V

    iput-object v1, p0, La3/n;->y:Ljava/lang/Runnable;

    sget-object v2, Lb3/k2;->i:Lr4/c03;

    sget-object v3, Lr4/rz;->I0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, La3/n;->g7()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La3/n;->A:Z

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, La3/n;->t:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
