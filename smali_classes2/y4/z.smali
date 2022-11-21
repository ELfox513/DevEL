.class public final Ly4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/b;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ly4/d;

.field public final c:Ly4/k0;

.field public final d:Ly4/n;

.field public final e:Ly4/e0;

.field public final f:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/i0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/app/Dialog;

.field public h:Ly4/i0;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly4/y;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk5/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly4/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Ly4/d;Ly4/k0;Ly4/n;Ly4/e0;Ly4/n1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ly4/d;",
            "Ly4/k0;",
            "Ly4/n;",
            "Ly4/e0;",
            "Ly4/n1<",
            "Ly4/i0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ly4/z;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ly4/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ly4/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ly4/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Ly4/z;->a:Landroid/app/Application;

    iput-object p2, p0, Ly4/z;->b:Ly4/d;

    iput-object p3, p0, Ly4/z;->c:Ly4/k0;

    iput-object p4, p0, Ly4/z;->d:Ly4/n;

    iput-object p5, p0, Ly4/z;->e:Ly4/e0;

    iput-object p6, p0, Ly4/z;->f:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lk5/b$a;)V
    .locals 4

    invoke-static {}, Ly4/g1;->a()V

    iget-object v0, p0, Ly4/z;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    new-instance p1, Ly4/u1;

    const-string v0, "ConsentForm#show can only be invoked once."

    invoke-direct {p1, v2, v0}, Ly4/u1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Ly4/u1;->a()Lk5/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lk5/b$a;->a(Lk5/e;)V

    return-void

    :cond_0
    new-instance v0, Ly4/x;

    invoke-direct {v0, p0, p1}, Ly4/x;-><init>(Ly4/z;Landroid/app/Activity;)V

    iget-object v3, p0, Ly4/z;->a:Landroid/app/Application;

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v3, p0, Ly4/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ly4/z;->c:Ly4/k0;

    invoke-virtual {v0, p1}, Ly4/k0;->a(Landroid/app/Activity;)V

    new-instance v0, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Ly4/z;->h:Ly4/i0;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ly4/u1;

    const-string v0, "Activity with null windows is passed in."

    invoke-direct {p1, v2, v0}, Ly4/u1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Ly4/u1;->a()Lk5/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lk5/b$a;->a(Lk5/e;)V

    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ly4/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Ly4/z;->g:Landroid/app/Dialog;

    iget-object p1, p0, Ly4/z;->h:Ly4/i0;

    const-string p2, "UMP_messagePresented"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ly4/i0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ly4/i0;
    .locals 1

    iget-object v0, p0, Ly4/z;->h:Ly4/i0;

    return-object v0
.end method

.method public final c(Lk5/f$b;Lk5/f$a;)V
    .locals 9

    iget-object v0, p0, Ly4/z;->f:Ly4/n1;

    check-cast v0, Ly4/j0;

    invoke-virtual {v0}, Ly4/j0;->b()Ly4/i0;

    move-result-object v0

    iput-object v0, p0, Ly4/z;->h:Ly4/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Ly4/h0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ly4/h0;-><init>(Ly4/i0;Ly4/g0;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Ly4/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ly4/y;

    invoke-direct {v1, p1, p2, v2}, Ly4/y;-><init>(Lk5/f$b;Lk5/f$a;Ly4/w;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, p0, Ly4/z;->h:Ly4/i0;

    iget-object p1, p0, Ly4/z;->e:Ly4/e0;

    invoke-virtual {p1}, Ly4/e0;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ly4/z;->e:Ly4/e0;

    invoke-virtual {p1}, Ly4/e0;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ly4/g1;->a:Landroid/os/Handler;

    new-instance p2, Ly4/v;

    invoke-direct {p2, p0}, Ly4/v;-><init>(Ly4/z;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d(I)V
    .locals 3

    invoke-virtual {p0}, Ly4/z;->h()V

    iget-object p1, p0, Ly4/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/b$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ly4/z;->d:Ly4/n;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ly4/n;->e(I)V

    invoke-interface {p1, v0}, Lk5/b$a;->a(Lk5/e;)V

    return-void
.end method

.method public final e(Ly4/u1;)V
    .locals 2

    invoke-virtual {p0}, Ly4/z;->h()V

    iget-object v0, p0, Ly4/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5/b$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ly4/u1;->a()Lk5/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lk5/b$a;->a(Lk5/e;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ly4/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/y;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ly4/y;->b(Lk5/b;)V

    return-void
.end method

.method public final g(Ly4/u1;)V
    .locals 2

    iget-object v0, p0, Ly4/z;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/y;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ly4/u1;->a()Lk5/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly4/y;->a(Lk5/e;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ly4/z;->g:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Ly4/z;->g:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Ly4/z;->c:Ly4/k0;

    invoke-virtual {v0, v1}, Ly4/k0;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Ly4/z;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/x;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ly4/x;->b:Ly4/z;

    iget-object v1, v1, Ly4/z;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method
