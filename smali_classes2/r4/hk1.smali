.class public final Lr4/hk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lr4/fo1;

.field public final b:Lc4/f;

.field public d:Lr4/g40;

.field public k:Lr4/u50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u50<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Long;

.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/fo1;Lc4/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hk1;->a:Lr4/fo1;

    iput-object p2, p0, Lr4/hk1;->b:Lc4/f;

    return-void
.end method


# virtual methods
.method public final a(Lr4/g40;)V
    .locals 3

    iput-object p1, p0, Lr4/hk1;->d:Lr4/g40;

    iget-object v0, p0, Lr4/hk1;->k:Lr4/u50;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lr4/hk1;->a:Lr4/fo1;

    invoke-virtual {v2, v1, v0}, Lr4/fo1;->f(Ljava/lang/String;Lr4/u50;)V

    :cond_0
    new-instance v0, Lr4/gk1;

    invoke-direct {v0, p0, p1}, Lr4/gk1;-><init>(Lr4/hk1;Lr4/g40;)V

    iput-object v0, p0, Lr4/hk1;->k:Lr4/u50;

    iget-object p1, p0, Lr4/hk1;->a:Lr4/fo1;

    invoke-virtual {p1, v1, v0}, Lr4/fo1;->e(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final b()Lr4/g40;
    .locals 1

    iget-object v0, p0, Lr4/hk1;->d:Lr4/g40;

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/hk1;->d:Lr4/g40;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/hk1;->q:Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lr4/hk1;->d()V

    :try_start_0
    iget-object v0, p0, Lr4/hk1;->d:Lr4/g40;

    invoke-interface {v0}, Lr4/g40;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/hk1;->p:Ljava/lang/String;

    iput-object v0, p0, Lr4/hk1;->q:Ljava/lang/Long;

    iget-object v1, p0, Lr4/hk1;->r:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lr4/hk1;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lr4/hk1;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/hk1;->p:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/hk1;->q:Ljava/lang/Long;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lr4/hk1;->p:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/hk1;->b:Lc4/f;

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iget-object v2, p0, Lr4/hk1;->q:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/hk1;->a:Lr4/fo1;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lr4/fo1;->g(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lr4/hk1;->d()V

    :cond_2
    :goto_0
    return-void
.end method
