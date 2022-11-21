.class public final Lr4/xs0;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lr4/cs0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final synthetic l0:I


# instance fields
.field public A:Lr4/vt0;

.field public final B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Ljava/lang/Boolean;

.field public H:Z

.field public final I:Ljava/lang/String;

.field public J:Lr4/at0;

.field public K:Z

.field public L:Z

.field public M:Lr4/b20;

.field public N:Lr4/y10;

.field public O:Lr4/bo;

.field public P:I

.field public Q:I

.field public R:Lr4/d00;

.field public final S:Lr4/d00;

.field public T:Lr4/d00;

.field public final U:Lr4/e00;

.field public V:I

.field public W:I

.field public final a:Lr4/ut0;

.field public a0:I

.field public final b:Lr4/u;

.field public b0:La3/n;

.field public c0:Z

.field public final d:Lr4/r00;

.field public final d0:Lb3/u1;

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/qq0;",
            ">;"
        }
    .end annotation
.end field

.field public final j0:Landroid/view/WindowManager;

.field public final k:Lr4/im0;

.field public final k0:Lr4/ip;

.field public p:Lz2/l;

.field public final q:Lz2/a;

.field public final r:Landroid/util/DisplayMetrics;

.field public final s:F

.field public t:Lr4/no2;

.field public u:Lr4/so2;

.field public v:Z

.field public w:Z

.field public x:Lr4/js0;

.field public y:La3/n;

.field public z:Lf4/a;


# direct methods
.method public constructor <init>(Lr4/ut0;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lr4/xs0;->v:Z

    iput-boolean p5, p0, Lr4/xs0;->w:Z

    const/4 p9, 0x1

    iput-boolean p9, p0, Lr4/xs0;->H:Z

    const-string v0, ""

    iput-object v0, p0, Lr4/xs0;->I:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lr4/xs0;->e0:I

    iput v0, p0, Lr4/xs0;->f0:I

    iput v0, p0, Lr4/xs0;->g0:I

    iput v0, p0, Lr4/xs0;->h0:I

    iput-object p1, p0, Lr4/xs0;->a:Lr4/ut0;

    iput-object p2, p0, Lr4/xs0;->A:Lr4/vt0;

    iput-object p3, p0, Lr4/xs0;->B:Ljava/lang/String;

    iput-boolean p4, p0, Lr4/xs0;->E:Z

    iput-object p6, p0, Lr4/xs0;->b:Lr4/u;

    iput-object p7, p0, Lr4/xs0;->d:Lr4/r00;

    iput-object p8, p0, Lr4/xs0;->k:Lr4/im0;

    iput-object p10, p0, Lr4/xs0;->p:Lz2/l;

    iput-object p11, p0, Lr4/xs0;->q:Lz2/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lr4/xs0;->j0:Landroid/view/WindowManager;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p2}, Lb3/k2;->f0(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lr4/xs0;->s:F

    iput-object p12, p0, Lr4/xs0;->k0:Lr4/ip;

    iput-object p13, p0, Lr4/xs0;->t:Lr4/no2;

    iput-object p14, p0, Lr4/xs0;->u:Lr4/so2;

    new-instance p2, Lb3/u1;

    invoke-virtual {p1}, Lr4/ut0;->a()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lb3/u1;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lr4/xs0;->d0:Lb3/u1;

    invoke-virtual {p0, p5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p6, "Unable to enable Javascript."

    invoke-static {p6, p3}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x15

    if-lt p3, p5, :cond_0

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lr4/ws0;->a(Landroid/webkit/WebSettings;I)V

    :cond_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object p3

    iget-object p5, p8, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {p3, p1, p5}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p3, p5, p2}, Lb3/g;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {p0}, Lr4/xs0;->s1()V

    invoke-static {}, Lc4/o;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lr4/ft0;

    new-instance p3, Lr4/ct0;

    invoke-direct {p3, p0}, Lr4/ct0;-><init>(Lr4/cs0;)V

    invoke-direct {p2, p0, p3}, Lr4/ft0;-><init>(Lr4/gt0;Lr4/et0;)V

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->x1()V

    new-instance p2, Lr4/e00;

    new-instance p3, Lr4/h00;

    iget-object p5, p0, Lr4/xs0;->B:Ljava/lang/String;

    const-string p6, "make_wv"

    invoke-direct {p3, p9, p6, p5}, Lr4/h00;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lr4/e00;-><init>(Lr4/h00;)V

    iput-object p2, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {p2}, Lr4/e00;->c()Lr4/h00;

    move-result-object p3

    invoke-virtual {p3, p4}, Lr4/h00;->a(Lr4/h00;)V

    sget-object p3, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p5

    invoke-virtual {p5, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lr4/xs0;->u:Lr4/so2;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lr4/so2;->b:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lr4/e00;->c()Lr4/h00;

    move-result-object p3

    iget-object p5, p0, Lr4/xs0;->u:Lr4/so2;

    iget-object p5, p5, Lr4/so2;->b:Ljava/lang/String;

    const-string p6, "gqi"

    invoke-virtual {p3, p6, p5}, Lr4/h00;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lr4/e00;->c()Lr4/h00;

    invoke-static {}, Lr4/h00;->f()Lr4/d00;

    move-result-object p3

    iput-object p3, p0, Lr4/xs0;->S:Lr4/d00;

    const-string p5, "native:view_create"

    invoke-virtual {p2, p5, p3}, Lr4/e00;->a(Ljava/lang/String;Lr4/d00;)V

    iput-object p4, p0, Lr4/xs0;->T:Lr4/d00;

    iput-object p4, p0, Lr4/xs0;->R:Lr4/d00;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb3/g;->c(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/nl0;->m()V

    return-void
.end method

.method public static synthetic f1(Lr4/xs0;)I
    .locals 0

    iget p0, p0, Lr4/xs0;->Q:I

    return p0
.end method

.method public static synthetic g1(Lr4/xs0;I)I
    .locals 0

    iput p1, p0, Lr4/xs0;->Q:I

    return p1
.end method

.method public static synthetic o1(Lr4/xs0;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized B0()Lf4/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->z:Lf4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Lr4/b20;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->M:Lr4/b20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final C0(La3/e;Z)V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0, p1, p2}, Lr4/js0;->Y(La3/e;Z)V

    return-void
.end method

.method public final declared-synchronized D(Ljava/lang/String;Lr4/qq0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final D0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->a:Lr4/ut0;

    invoke-virtual {v0}, Lr4/ut0;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final E()V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->d0:Lb3/u1;

    invoke-virtual {v0}, Lb3/u1;->b()V

    return-void
.end method

.method public final declared-synchronized F()Lr4/bo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->O:Lr4/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/js0;->F0()V

    :cond_0
    return-void
.end method

.method public final G()Lr4/no2;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->t:Lr4/no2;

    return-object v0
.end method

.method public final G0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final H()Lr4/u;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->b:Lr4/u;

    return-object v0
.end method

.method public final H0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb3/k2;->Q(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lr4/xs0;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final I()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final I0()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    return-object v0
.end method

.method public final J()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized K(Lr4/at0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->J:Lr4/at0;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lr4/xs0;->J:Lr4/at0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final K0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lr4/xs0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lr4/xs0;->W:I

    return v0
.end method

.method public final L0(Lr4/no2;Lr4/so2;)V
    .locals 0

    iput-object p1, p0, Lr4/xs0;->t:Lr4/no2;

    iput-object p2, p0, Lr4/xs0;->u:Lr4/so2;

    return-void
.end method

.method public final M()Lr4/so2;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->u:Lr4/so2;

    return-object v0
.end method

.method public final declared-synchronized M0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->p:Lz2/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/l;->M0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lr4/xs0;->a0:I

    return v0
.end method

.method public final O()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized O0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized P()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized P0(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lr4/xs0;->y:La3/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La3/n;->m7(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Q0(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lr4/js0;->j0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final R()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final declared-synchronized R0(Lr4/b20;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->M:Lr4/b20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final S(I)V
    .locals 0

    iput p1, p0, Lr4/xs0;->W:I

    return-void
.end method

.method public final S0(ZIZ)V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0, p1, p2, p3}, Lr4/js0;->c0(ZIZ)V

    return-void
.end method

.method public final declared-synchronized T()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized T0(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lr4/xs0;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized U0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/xs0;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized V0(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lr4/xs0;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final W()Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/xs0;->d:Lr4/r00;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lr4/r00;->b()Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized W0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->v1()V

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/vs0;

    invoke-direct {v1, p0}, Lr4/vs0;-><init>(Lr4/xs0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final X()V
    .locals 3

    invoke-virtual {p0}, Lr4/xs0;->r1()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lr4/xs0;->k:Lr4/im0;

    iget-object v1, v1, Lr4/im0;->a:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized X0(La3/n;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->b0:La3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Y(Lr4/mm;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lr4/mm;->j:Z

    iput-boolean p1, p0, Lr4/xs0;->K:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lr4/xs0;->y1(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized Y0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->E:Z

    iput-boolean p1, p0, Lr4/xs0;->E:Z

    invoke-virtual {p0}, Lr4/xs0;->s1()V

    if-eq p1, v0, :cond_2

    sget-object v0, Lr4/rz;->L:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lr4/fe0;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v1, p1, :cond_1

    const-string p1, "default"

    goto :goto_0

    :cond_1
    const-string p1, "expanded"

    :goto_0
    invoke-virtual {v0, p1}, Lr4/fe0;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Z()La3/n;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->y:La3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->p:Lz2/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/l;->Z0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/js0;->a()V

    :cond_0
    return-void
.end method

.method public final a0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0, p1}, Lr4/js0;->g(Z)V

    return-void
.end method

.method public final a1(Ljava/lang/String;Lc4/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc4/p<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/js0;->C0(Ljava/lang/String;Lc4/p;)V

    :cond_0
    return-void
.end method

.method public final b0(I)V
    .locals 0

    iput p1, p0, Lr4/xs0;->a0:I

    return-void
.end method

.method public final declared-synchronized b1()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Dispatching AFMA event: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/xs0;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized c0(Ljava/lang/String;)Lr4/qq0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/qq0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    sget-object v0, Lr4/rz;->K:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "12.4.51-000"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "version"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk"

    const-string v3, "Google Mobile Ads"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<script>Object.defineProperty(window,\'MRAID_ENV\',{get:function(){return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}});</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to build MRAID_ENV"

    invoke-static {v1, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Lr4/lt0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-super/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Lr4/do0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized d1(La3/n;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->y:La3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->x1()V

    iget-object v0, p0, Lr4/xs0;->d0:Lb3/u1;

    invoke-virtual {v0}, Lb3/u1;->c()V

    iget-object v0, p0, Lr4/xs0;->y:La3/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La3/n;->a()V

    iget-object v0, p0, Lr4/xs0;->y:La3/n;

    invoke-virtual {v0}, La3/n;->m()V

    iput-object v1, p0, Lr4/xs0;->y:La3/n;

    :cond_0
    iput-object v1, p0, Lr4/xs0;->z:Lf4/a;

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->H0()V

    iput-object v1, p0, Lr4/xs0;->O:Lr4/bo;

    iput-object v1, p0, Lr4/xs0;->p:Lz2/l;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lr4/xs0;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/iq0;->d(Lr4/po0;)Z

    invoke-virtual {p0}, Lr4/xs0;->w1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/xs0;->D:Z

    sget-object v0, Lr4/rz;->c7:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lr4/xs0;->p1(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "Destroying the WebView immediately..."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->W0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e0(I)V
    .locals 0

    return-void
.end method

.method public final e1(ZJ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    invoke-virtual {p0, p1, v0}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()Lr4/at0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->J:Lr4/at0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finalize()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lr4/xs0;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->H0()V

    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/iq0;->d(Lr4/po0;)Z

    invoke-virtual {p0}, Lr4/xs0;->w1()V

    invoke-virtual {p0}, Lr4/xs0;->v1()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/xs0;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public final g0(Ljava/lang/String;Lr4/u50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_0
    return-void
.end method

.method public final h()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->a:Lr4/ut0;

    invoke-virtual {v0}, Lr4/ut0;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized h0(Lr4/y10;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->N:Lr4/y10;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h1()Z
    .locals 10

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v0, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v0, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lr4/xs0;->a:Lr4/ut0;

    invoke-virtual {v0}, Lr4/ut0;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v0}, Lb3/k2;->t(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v3, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v6, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v4

    move v7, v5

    :goto_2
    iget v0, p0, Lr4/xs0;->f0:I

    if-ne v0, v4, :cond_5

    iget v3, p0, Lr4/xs0;->e0:I

    if-ne v3, v5, :cond_5

    iget v3, p0, Lr4/xs0;->g0:I

    if-ne v3, v6, :cond_5

    iget v3, p0, Lr4/xs0;->h0:I

    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    return v1

    :cond_5
    :goto_3
    if-ne v0, v4, :cond_6

    iget v0, p0, Lr4/xs0;->e0:I

    if-eq v0, v5, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput v4, p0, Lr4/xs0;->f0:I

    iput v5, p0, Lr4/xs0;->e0:I

    iput v6, p0, Lr4/xs0;->g0:I

    iput v7, p0, Lr4/xs0;->h0:I

    new-instance v3, Lr4/fe0;

    const-string v0, ""

    invoke-direct {v3, p0, v0}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    iget-object v0, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lr4/xs0;->j0:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lr4/fe0;->g(IIIIFI)V

    return v1
.end method

.method public final i()Lz2/a;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->q:Lz2/a;

    return-object v0
.end method

.method public final declared-synchronized i1(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lr4/xs0;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()Lr4/d00;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->S:Lr4/d00;

    return-object v0
.end method

.method public final j0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lr4/js0;->b0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized j1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lr4/xs0;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lr4/xs0;->Z()La3/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La3/n;->L()V

    :cond_0
    return-void
.end method

.method public final k0()V
    .locals 6

    iget-object v0, p0, Lr4/xs0;->R:Lr4/d00;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    iget-object v2, p0, Lr4/xs0;->S:Lr4/d00;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lr4/yz;->a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    invoke-static {}, Lr4/h00;->f()Lr4/d00;

    move-result-object v0

    iput-object v0, p0, Lr4/xs0;->R:Lr4/d00;

    iget-object v2, p0, Lr4/xs0;->U:Lr4/e00;

    const-string v3, "native:view_show"

    invoke-virtual {v2, v3, v0}, Lr4/e00;->a(Ljava/lang/String;Lr4/d00;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lr4/xs0;->k:Lr4/im0;

    iget-object v1, v1, Lr4/im0;->a:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final k1(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lc4/o;->f()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lr4/xs0;->m1()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/xs0;->q1()V

    :cond_0
    invoke-virtual {p0}, Lr4/xs0;->m1()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/xs0;->j1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lr4/xs0;->i1(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lr4/xs0;->i1(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized l()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->I:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->y:La3/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v1}, Lr4/js0;->e()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, La3/n;->l7(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lr4/xs0;->C:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l1(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->G:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/nl0;->f(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()Lr4/e00;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    return-object v0
.end method

.method public final m0(ZILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/js0;->e0(ZILjava/lang/String;Z)V

    return-void
.end method

.method public final declared-synchronized m1()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->G:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Lr4/im0;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->k:Lr4/im0;

    return-object v0
.end method

.method public final n0(Z)V
    .locals 1

    iget-object p1, p0, Lr4/xs0;->x:Lr4/js0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/js0;->d(Z)V

    return-void
.end method

.method public final n1()Lr4/js0;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    return-object v0
.end method

.method public final declared-synchronized o()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/xs0;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic o0()Lr4/st0;
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    return-object v0
.end method

.method public final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->d0:Lb3/u1;

    invoke-virtual {v0}, Lb3/u1;->d()V

    :cond_0
    iget-boolean v0, p0, Lr4/xs0;->K:Z

    iget-object v1, p0, Lr4/xs0;->x:Lr4/js0;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lr4/js0;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lr4/xs0;->L:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->N()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->Q()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v2, p0, Lr4/xs0;->L:Z

    :cond_1
    invoke-virtual {p0}, Lr4/xs0;->h1()Z

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lr4/xs0;->y1(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->d0:Lb3/u1;

    invoke-virtual {v0}, Lb3/u1;->e()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lr4/xs0;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/js0;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->N()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->Q()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v1, p0, Lr4/xs0;->L:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lr4/xs0;->y1(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lb3/k2;->p(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x33

    add-int/2addr p2, p3

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lr4/xs0;->h1()Z

    move-result v0

    invoke-virtual {p0}, Lr4/xs0;->Z()La3/n;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, La3/n;->h7()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lr4/xs0;->E:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lr4/rz;->o2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lr4/xs0;->f()Lr4/at0;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr4/at0;->l()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v2, v0, v2

    if-nez v2, :cond_5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v2, p2

    mul-float v2, v2, v0

    float-to-int v2, v2

    int-to-float v3, p1

    div-float/2addr v3, v0

    float-to-int v3, v3

    if-nez p2, :cond_7

    if-eqz v3, :cond_6

    int-to-float p2, v3

    mul-float p2, p2, v0

    float-to-int v2, p2

    move v1, p1

    move p2, v3

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :cond_7
    if-nez p1, :cond_8

    if-eqz v2, :cond_9

    int-to-float p1, v2

    div-float/2addr p1, v0

    float-to-int v3, p1

    move v1, v2

    goto :goto_1

    :cond_8
    move v1, p1

    :cond_9
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_5
    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lr4/rz;->s2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lc4/o;->d()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Lr4/us0;

    invoke-direct {v0, p0}, Lr4/us0;-><init>(Lr4/xs0;)V

    const-string v1, "/contentHeight"

    invoke-virtual {p0, v1, v0}, Lr4/xs0;->g0(Ljava/lang/String;Lr4/u50;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-virtual {p0, v0}, Lr4/xs0;->k1(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lr4/xs0;->Q:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    :cond_c
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_d
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :try_start_7
    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lr4/xs0;->r:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const v3, 0x7fffffff

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_11

    if-ne v0, v4, :cond_10

    goto :goto_4

    :cond_10
    const v0, 0x7fffffff

    goto :goto_5

    :cond_11
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v5, :cond_12

    if-ne v2, v4, :cond_13

    :cond_12
    move v3, p2

    :cond_13
    iget-object v2, p0, Lr4/xs0;->A:Lr4/vt0;

    iget v4, v2, Lr4/vt0;->c:I

    const/4 v5, 0x1

    if-gt v4, v0, :cond_15

    iget v2, v2, Lr4/vt0;->b:I

    if-le v2, v3, :cond_14

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    goto :goto_7

    :cond_15
    :goto_6
    const/4 v2, 0x1

    :goto_7
    sget-object v4, Lr4/rz;->K3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v6

    invoke-virtual {v6, v4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lr4/xs0;->A:Lr4/vt0;

    iget v6, v4, Lr4/vt0;->c:I

    iget v7, p0, Lr4/xs0;->s:F

    int-to-float v6, v6

    div-float/2addr v6, v7

    int-to-float v0, v0

    div-float/2addr v0, v7

    cmpl-float v0, v6, v0

    if-gtz v0, :cond_16

    iget v0, v4, Lr4/vt0;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v3, v3

    div-float/2addr v3, v7

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    :goto_8
    if-eq v5, v2, :cond_17

    goto :goto_9

    :cond_17
    move v2, v0

    :cond_18
    :goto_9
    const/16 v0, 0x8

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lr4/xs0;->A:Lr4/vt0;

    iget v3, v2, Lr4/vt0;->c:I

    iget v4, p0, Lr4/xs0;->s:F

    iget v2, v2, Lr4/vt0;->b:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x67

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, p2

    div-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_19

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lr4/xs0;->v:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lr4/xs0;->k0:Lr4/ip;

    const/16 p2, 0x2711

    invoke-virtual {p1, p2}, Lr4/ip;->c(I)V

    iput-boolean v5, p0, Lr4/xs0;->v:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :cond_1a
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1c

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-boolean p1, p0, Lr4/xs0;->w:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lr4/xs0;->k0:Lr4/ip;

    const/16 p2, 0x2712

    invoke-virtual {p1, p2}, Lr4/ip;->c(I)V

    iput-boolean v5, p0, Lr4/xs0;->w:Z

    :cond_1d
    iget-object p1, p0, Lr4/xs0;->A:Lr4/vt0;

    iget p2, p1, Lr4/vt0;->c:I

    iget p1, p1, Lr4/vt0;->b:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :cond_1e
    :goto_a
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    invoke-virtual {v0}, Lr4/js0;->L()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->M:Lr4/b20;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/b20;->a(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lr4/xs0;->b:Lr4/u;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lr4/u;->d(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, p0, Lr4/xs0;->d:Lr4/r00;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lr4/r00;->a(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->u:Lr4/so2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr4/so2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/xs0;->P:I

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 v1, -0x1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lr4/xs0;->P:I

    if-gtz v0, :cond_1

    iget-object p1, p0, Lr4/xs0;->y:La3/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, La3/n;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p1(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "about:blank"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl in destroy(). "

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final q0(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lr4/xs0;->a:Lr4/ut0;

    invoke-virtual {v0, p1}, Lr4/ut0;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lr4/xs0;->d0:Lb3/u1;

    iget-object v0, p0, Lr4/xs0;->a:Lr4/ut0;

    invoke-virtual {v0}, Lr4/ut0;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb3/u1;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final declared-synchronized q1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->g()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lr4/xs0;->G:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr4/xs0;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr4/xs0;->l1(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr4/xs0;->l1(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Lr4/vt0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r1()V
    .locals 5

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    iget-object v1, p0, Lr4/xs0;->S:Lr4/d00;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lr4/yz;->a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z

    return-void
.end method

.method public final declared-synchronized s1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->t:Lr4/no2;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lr4/no2;->j0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->t1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lr4/xs0;->E:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {v0}, Lr4/vt0;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->t1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->u1()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_3
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/xs0;->u1()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lr4/js0;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/js0;

    iput-object p1, p0, Lr4/xs0;->x:Lr4/js0;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lr4/xs0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lr4/xs0;->T:Lr4/d00;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    invoke-static {}, Lr4/h00;->f()Lr4/d00;

    move-result-object v0

    iput-object v0, p0, Lr4/xs0;->T:Lr4/d00;

    iget-object v1, p0, Lr4/xs0;->U:Lr4/e00;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lr4/e00;->a(Ljava/lang/String;Lr4/d00;)V

    :cond_0
    return-void
.end method

.method public final t0(ZI)Z
    .locals 2

    invoke-virtual {p0}, Lr4/xs0;->destroy()V

    iget-object v0, p0, Lr4/xs0;->k0:Lr4/ip;

    new-instance v1, Lr4/ts0;

    invoke-direct {v1, p1, p2}, Lr4/ts0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lr4/ip;->b(Lr4/hp;)V

    iget-object p1, p0, Lr4/xs0;->k0:Lr4/ip;

    const/16 p2, 0x2713

    invoke-virtual {p1, p2}, Lr4/ip;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized t1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->F:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput-boolean v1, p0, Lr4/xs0;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u0(Lr4/vt0;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->A:Lr4/vt0;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized u1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput-boolean v1, p0, Lr4/xs0;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final v0(Ljava/lang/String;Lr4/u50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/xs0;->x:Lr4/js0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/js0;->A0(Ljava/lang/String;Lr4/u50;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized v1()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/xs0;->c0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/xs0;->c0:Z

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->y:La3/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La3/n;->n7(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w0()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized w1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/qq0;

    invoke-virtual {v1}, Lr4/qq0;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/xs0;->i0:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized x()La3/n;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->b0:La3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x0(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    iget-object v1, p0, Lr4/xs0;->S:Lr4/d00;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lr4/yz;->a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Lr4/xs0;->r1()V

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lr4/h00;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/xs0;->k:Lr4/im0;

    iget-object p1, p1, Lr4/im0;->a:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x1()V
    .locals 2

    iget-object v0, p0, Lr4/xs0;->U:Lr4/e00;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/nl0;->e()Lr4/wz;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lr4/wz;->b(Lr4/h00;)Z

    :cond_1
    return-void
.end method

.method public final declared-synchronized y0(Lf4/a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->z:Lf4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y1(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lr4/xs0;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/xs0;->N:Lr4/y10;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/y10;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z0(Lr4/bo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr4/xs0;->O:Lr4/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
