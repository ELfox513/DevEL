.class public final Lb5/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;)V
    .locals 0

    iput-object p1, p0, Lb5/x2;->a:Lb5/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/p2;

    invoke-direct {v1, p0, p2, p1}, Lb5/p2;-><init>(Lb5/x2;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/w2;

    invoke-direct {v1, p0, p1}, Lb5/w2;-><init>(Lb5/x2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/s2;

    invoke-direct {v1, p0, p1}, Lb5/s2;-><init>(Lb5/x2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/r2;

    invoke-direct {v1, p0, p1}, Lb5/r2;-><init>(Lb5/x2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lb5/b1;

    invoke-direct {v0}, Lb5/b1;-><init>()V

    iget-object v1, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v2, Lb5/v2;

    invoke-direct {v2, p0, p1, v0}, Lb5/v2;-><init>(Lb5/x2;Landroid/app/Activity;Lb5/b1;)V

    invoke-static {v1, v2}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lb5/b1;->o0(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/q2;

    invoke-direct {v1, p0, p1}, Lb5/q2;-><init>(Lb5/x2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lb5/x2;->a:Lb5/y2;

    new-instance v1, Lb5/u2;

    invoke-direct {v1, p0, p1}, Lb5/u2;-><init>(Lb5/x2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lb5/y2;->F(Lb5/y2;Lb5/n2;)V

    return-void
.end method
