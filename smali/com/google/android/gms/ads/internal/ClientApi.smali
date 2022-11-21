.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lr4/ew;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/ew;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6(Lf4/a;Lr4/fb0;I)Lr4/vk0;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/bu0;->y()Lh3/g0;

    move-result-object p1

    return-object p1
.end method

.method public final B1(Lf4/a;Lf4/a;Lf4/a;)Lr4/w20;
    .locals 1

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lr4/yj1;

    invoke-direct {v0, p1, p2, p3}, Lr4/yj1;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final I3(Lf4/a;Lr4/yt;Ljava/lang/String;I)Lr4/vv;
    .locals 4

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lr4/im0;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lr4/im0;-><init>(IIZZ)V

    new-instance p4, Lz2/s;

    invoke-direct {p4, p1, p2, p3, v0}, Lz2/s;-><init>(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/im0;)V

    return-object p4
.end method

.method public final K4(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p4

    invoke-virtual {p4}, Lr4/bu0;->t()Lr4/rm2;

    move-result-object p4

    invoke-interface {p4, p1}, Lr4/rm2;->b(Landroid/content/Context;)Lr4/rm2;

    invoke-interface {p4, p2}, Lr4/rm2;->a(Lr4/yt;)Lr4/rm2;

    invoke-interface {p4, p3}, Lr4/rm2;->A(Ljava/lang/String;)Lr4/rm2;

    invoke-interface {p4}, Lr4/rm2;->zza()Lr4/sm2;

    move-result-object p1

    invoke-interface {p1}, Lr4/sm2;->zza()Lr4/l92;

    move-result-object p1

    return-object p1
.end method

.method public final O3(Lf4/a;Lr4/fb0;I)Lr4/ke0;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/bu0;->A()Lr4/k12;

    move-result-object p1

    return-object p1
.end method

.method public final P3(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p4

    invoke-virtual {p4}, Lr4/bu0;->o()Lr4/wk2;

    move-result-object p4

    invoke-interface {p4, p1}, Lr4/wk2;->b(Landroid/content/Context;)Lr4/wk2;

    invoke-interface {p4, p2}, Lr4/wk2;->a(Lr4/yt;)Lr4/wk2;

    invoke-interface {p4, p3}, Lr4/wk2;->A(Ljava/lang/String;)Lr4/wk2;

    invoke-interface {p4}, Lr4/wk2;->zza()Lr4/xk2;

    move-result-object p1

    invoke-interface {p1}, Lr4/xk2;->zza()Lr4/i82;

    move-result-object p1

    return-object p1
.end method

.method public final U(Lf4/a;)Lr4/we0;
    .locals 3

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->X0(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, La3/u;

    invoke-direct {v0, p1}, La3/u;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    new-instance v0, La3/u;

    invoke-direct {v0, p1}, La3/u;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, La3/a0;

    invoke-direct {v0, p1}, La3/a0;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v1, La3/w;

    invoke-direct {v1, p1, v0}, La3/w;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, La3/c;

    invoke-direct {v0, p1}, La3/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    new-instance v0, La3/b;

    invoke-direct {v0, p1}, La3/b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    new-instance v0, La3/t;

    invoke-direct {v0, p1}, La3/t;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0
.end method

.method public final b4(Lf4/a;I)Lr4/nw;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lr4/bu0;->e(Landroid/content/Context;I)Lr4/bu0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/bu0;->m()Lr4/ax0;

    move-result-object p1

    return-object p1
.end method

.method public final i5(Lf4/a;Lf4/a;)Lr4/s20;
    .locals 2

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lr4/ak1;

    const v1, 0xcbe6bb0

    invoke-direct {v0, p1, p2, v1}, Lr4/ak1;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final j6(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p2

    invoke-virtual {p2}, Lr4/bu0;->r()Lr4/gj2;

    move-result-object p2

    invoke-interface {p2, p3}, Lr4/gj2;->u(Ljava/lang/String;)Lr4/gj2;

    invoke-interface {p2, p1}, Lr4/gj2;->a(Landroid/content/Context;)Lr4/gj2;

    invoke-interface {p2}, Lr4/gj2;->zza()Lr4/hj2;

    move-result-object p1

    sget-object p2, Lr4/rz;->C3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    invoke-interface {p1}, Lr4/hj2;->a()Lr4/ok2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lr4/hj2;->zza()Lr4/ej2;

    move-result-object p1

    return-object p1
.end method

.method public final m1(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Lr4/rv;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p3

    new-instance p4, Lr4/f82;

    invoke-direct {p4, p3, p1, p2}, Lr4/f82;-><init>(Lr4/bu0;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final o4(Lf4/a;Lr4/fb0;I)Lr4/ih0;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p2

    invoke-virtual {p2}, Lr4/bu0;->w()Lr4/go2;

    move-result-object p2

    invoke-interface {p2, p1}, Lr4/go2;->a(Landroid/content/Context;)Lr4/go2;

    invoke-interface {p2}, Lr4/go2;->zza()Lr4/ho2;

    move-result-object p1

    invoke-interface {p1}, Lr4/ho2;->zza()Lr4/ko2;

    move-result-object p1

    return-object p1
.end method

.method public final q5(Lf4/a;Lr4/fb0;ILr4/o60;)Lr4/q60;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p2

    invoke-virtual {p2}, Lr4/bu0;->c()Lr4/ut1;

    move-result-object p2

    invoke-interface {p2, p1}, Lr4/ut1;->a(Landroid/content/Context;)Lr4/ut1;

    invoke-interface {p2, p4}, Lr4/ut1;->b(Lr4/o60;)Lr4/ut1;

    invoke-interface {p2}, Lr4/ut1;->zza()Lr4/vt1;

    move-result-object p1

    invoke-interface {p1}, Lr4/vt1;->b()Lr4/st1;

    move-result-object p1

    return-object p1
.end method

.method public final x5(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Lr4/yh0;
    .locals 0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lr4/bu0;->d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;

    move-result-object p3

    invoke-virtual {p3}, Lr4/bu0;->w()Lr4/go2;

    move-result-object p3

    invoke-interface {p3, p1}, Lr4/go2;->a(Landroid/content/Context;)Lr4/go2;

    invoke-interface {p3, p2}, Lr4/go2;->u(Ljava/lang/String;)Lr4/go2;

    invoke-interface {p3}, Lr4/go2;->zza()Lr4/ho2;

    move-result-object p1

    invoke-interface {p1}, Lr4/ho2;->a()Lr4/eo2;

    move-result-object p1

    return-object p1
.end method
