.class public final Ly4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final synthetic b:Ly4/z;


# direct methods
.method public constructor <init>(Ly4/z;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ly4/x;->b:Ly4/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly4/x;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Ly4/x;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ly4/x;->b:Ly4/z;

    new-instance v0, Ly4/u1;

    const/4 v1, 0x3

    const-string v2, "Activity is destroyed."

    invoke-direct {v0, v1, v2}, Ly4/u1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ly4/z;->e(Ly4/u1;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
