.class public final Lr4/pk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/rp1;

.field public final b:Lr4/fo1;

.field public final c:Lr4/zz0;

.field public final d:Lr4/mj1;


# direct methods
.method public constructor <init>(Lr4/rp1;Lr4/fo1;Lr4/zz0;Lr4/mj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pk1;->a:Lr4/rp1;

    iput-object p2, p0, Lr4/pk1;->b:Lr4/fo1;

    iput-object p3, p0, Lr4/pk1;->c:Lr4/zz0;

    iput-object p4, p0, Lr4/pk1;->d:Lr4/mj1;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lr4/pk1;->a:Lr4/rp1;

    invoke-static {}, Lr4/yt;->Y0()Lr4/yt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lr4/jk1;

    invoke-direct {v1, p0}, Lr4/jk1;-><init>(Lr4/pk1;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    new-instance v1, Lr4/kk1;

    invoke-direct {v1, p0}, Lr4/kk1;-><init>(Lr4/pk1;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    iget-object v1, p0, Lr4/pk1;->b:Lr4/fo1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lr4/lk1;

    invoke-direct {v3, p0}, Lr4/lk1;-><init>(Lr4/pk1;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lr4/fo1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;)V

    iget-object v1, p0, Lr4/pk1;->b:Lr4/fo1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lr4/mk1;

    invoke-direct {v3, p0}, Lr4/mk1;-><init>(Lr4/pk1;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lr4/fo1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;)V

    iget-object v1, p0, Lr4/pk1;->b:Lr4/fo1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lr4/nk1;

    invoke-direct {v3, p0}, Lr4/nk1;-><init>(Lr4/pk1;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lr4/fo1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final synthetic b(Lr4/cs0;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lr4/pk1;->c:Lr4/zz0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lr4/zz0;->d(Z)V

    return-void
.end method

.method public final synthetic c(Lr4/cs0;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lr4/pk1;->c:Lr4/zz0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lr4/zz0;->d(Z)V

    return-void
.end method

.method public final synthetic d(Ljava/util/Map;Z)V
    .locals 2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/pk1;->b:Lr4/fo1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lr4/fo1;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic e(Lr4/cs0;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lr4/pk1;->d:Lr4/mj1;

    invoke-interface {p1}, Lr4/mj1;->K()V

    return-void
.end method

.method public final synthetic f(Lr4/cs0;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lr4/pk1;->b:Lr4/fo1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lr4/fo1;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
