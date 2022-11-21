.class public final Lr4/tk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/s92;

.field public final synthetic b:Lr4/f21;

.field public final synthetic c:Lr4/uk2;


# direct methods
.method public constructor <init>(Lr4/uk2;Lr4/s92;Lr4/f21;)V
    .locals 0

    iput-object p1, p0, Lr4/tk2;->c:Lr4/uk2;

    iput-object p2, p0, Lr4/tk2;->a:Lr4/s92;

    iput-object p3, p0, Lr4/tk2;->b:Lr4/f21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lr4/tk2;->b:Lr4/f21;

    invoke-virtual {v0}, Lr4/f21;->b()Lr4/m41;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/m41;->h(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v0

    iget-object v1, p0, Lr4/tk2;->c:Lr4/uk2;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lr4/tk2;->c:Lr4/uk2;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lr4/uk2;->h(Lr4/uk2;Lr4/h83;)Lr4/h83;

    iget-object v2, p0, Lr4/tk2;->b:Lr4/f21;

    invoke-virtual {v2}, Lr4/f21;->a()Lr4/l71;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/l71;->B(Lr4/lt;)V

    sget-object v2, Lr4/rz;->O5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v2}, Lr4/uk2;->c(Lr4/uk2;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lr4/sk2;

    invoke-direct {v3, p0, v0}, Lr4/sk2;-><init>(Lr4/tk2;Lr4/lt;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v2}, Lr4/uk2;->g(Lr4/uk2;)Lr4/aa1;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lr4/aa1;->T0(I)V

    iget v0, v0, Lr4/lt;->a:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lr4/yp2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/tk2;->a:Lr4/s92;

    invoke-interface {p1}, Lr4/s92;->zza()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lr4/h11;

    iget-object v0, p0, Lr4/tk2;->c:Lr4/uk2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/tk2;->c:Lr4/uk2;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/uk2;->h(Lr4/uk2;Lr4/h83;)Lr4/h83;

    iget-object v1, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v1}, Lr4/uk2;->f(Lr4/uk2;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lr4/h11;->g()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lr4/h11;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {p1}, Lr4/i31;->d()Lr4/b71;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lr4/i31;->d()Lr4/b71;

    move-result-object v2

    invoke-virtual {v2}, Lr4/b71;->c()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lr4/h11;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v1, Lr4/rz;->O5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lr4/i31;->f()Lr4/ub1;

    move-result-object v2

    iget-object v3, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v3}, Lr4/uk2;->d(Lr4/uk2;)Lr4/d92;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/ub1;->a(Lr4/d92;)Lr4/ub1;

    iget-object v3, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v3}, Lr4/uk2;->e(Lr4/uk2;)Lr4/h92;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/ub1;->b(Lr4/h92;)Lr4/ub1;

    :cond_2
    iget-object v2, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v2}, Lr4/uk2;->f(Lr4/uk2;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1}, Lr4/h11;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lr4/tk2;->a:Lr4/s92;

    invoke-interface {v2, p1}, Lr4/s92;->b(Ljava/lang/Object;)V

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v1}, Lr4/uk2;->c(Lr4/uk2;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v2}, Lr4/uk2;->d(Lr4/uk2;)Lr4/d92;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lr4/rk2;->a(Lr4/d92;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lr4/tk2;->c:Lr4/uk2;

    invoke-static {v1}, Lr4/uk2;->g(Lr4/uk2;)Lr4/aa1;

    move-result-object v1

    invoke-virtual {p1}, Lr4/h11;->l()I

    move-result p1

    invoke-virtual {v1, p1}, Lr4/aa1;->T0(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
