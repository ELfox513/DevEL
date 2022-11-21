.class public final Lr4/xf1;
.super Lr4/i31;
.source "SourceFile"


# instance fields
.field public final i:Landroid/content/Context;

.field public final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/le1;

.field public final l:Lr4/dh1;

.field public final m:Lr4/d41;

.field public final n:Lr4/sx2;

.field public final o:Lr4/w71;

.field public p:Z


# direct methods
.method public constructor <init>(Lr4/h31;Landroid/content/Context;Lr4/cs0;Lr4/le1;Lr4/dh1;Lr4/d41;Lr4/sx2;Lr4/w71;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/i31;-><init>(Lr4/h31;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/xf1;->p:Z

    iput-object p2, p0, Lr4/xf1;->i:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr4/xf1;->j:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lr4/xf1;->k:Lr4/le1;

    iput-object p5, p0, Lr4/xf1;->l:Lr4/dh1;

    iput-object p6, p0, Lr4/xf1;->m:Lr4/d41;

    iput-object p7, p0, Lr4/xf1;->n:Lr4/sx2;

    iput-object p8, p0, Lr4/xf1;->o:Lr4/w71;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/xf1;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/cs0;

    sget-object v1, Lr4/rz;->Z4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lr4/xf1;->p:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v0}, Lr4/wf1;->a(Lr4/cs0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr4/cs0;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g(ZLandroid/app/Activity;)Z
    .locals 4

    sget-object v0, Lr4/rz;->r0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/xf1;->i:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/xf1;->o:Lr4/w71;

    invoke-virtual {p1}, Lr4/w71;->e()V

    sget-object p1, Lr4/rz;->s0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/xf1;->n:Lr4/sx2;

    iget-object p2, p0, Lr4/i31;->a:Lr4/bp2;

    iget-object p2, p2, Lr4/bp2;->b:Lr4/ap2;

    iget-object p2, p2, Lr4/ap2;->b:Lr4/so2;

    iget-object p2, p2, Lr4/so2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lr4/sx2;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/rz;->X6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/xf1;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "The interstitial ad has been showed."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/xf1;->o:Lr4/w71;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr4/w71;->S(Lr4/lt;)V

    :cond_1
    iget-boolean v0, p0, Lr4/xf1;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lr4/xf1;->k:Lr4/le1;

    invoke-virtual {v0}, Lr4/le1;->zza()V

    if-nez p2, :cond_2

    iget-object p2, p0, Lr4/xf1;->i:Landroid/content/Context;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lr4/xf1;->l:Lr4/dh1;

    iget-object v2, p0, Lr4/xf1;->o:Lr4/w71;

    invoke-interface {v0, p1, p2, v2}, Lr4/dh1;->a(ZLandroid/content/Context;Lr4/w71;)V

    iget-object p1, p0, Lr4/xf1;->k:Lr4/le1;

    invoke-virtual {p1}, Lr4/le1;->a()V
    :try_end_0
    .catch Lr4/ch1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/xf1;->p:Z

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lr4/xf1;->o:Lr4/w71;

    invoke-virtual {p2, p1}, Lr4/w71;->U(Lr4/ch1;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lr4/xf1;->m:Lr4/d41;

    invoke-virtual {v0}, Lr4/d41;->a()Z

    move-result v0

    return v0
.end method
