.class public final Lv3/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lv3/d1;

.field public final synthetic b:Lv3/h1;


# direct methods
.method public constructor <init>(Lv3/h1;Lv3/d1;)V
    .locals 0

    iput-object p1, p0, Lv3/f1;->b:Lv3/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv3/f1;->a:Lv3/d1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lv3/f1;->b:Lv3/h1;

    iget-boolean v0, v0, Lv3/h1;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv3/f1;->a:Lv3/d1;

    invoke-virtual {v0}, Lv3/d1;->b()Lt3/b;

    move-result-object v0

    invoke-virtual {v0}, Lt3/b;->a1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lv3/h;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lt3/b;->Z0()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v3, p0, Lv3/f1;->a:Lv3/d1;

    invoke-virtual {v3}, Lv3/d1;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lv3/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v2, v1, Lv3/h1;->p:Lt3/g;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lt3/b;->X0()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lt3/g;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v2, v1, Lv3/h1;->p:Lt3/g;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lv3/h;

    invoke-virtual {v0}, Lt3/b;->X0()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lv3/f1;->b:Lv3/h1;

    invoke-virtual/range {v2 .. v7}, Lt3/g;->p(Landroid/app/Activity;Lv3/h;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lt3/b;->X0()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v1, v0, Lv3/h1;->p:Lt3/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lv3/f1;->b:Lv3/h1;

    invoke-virtual {v1, v0, v2}, Lt3/g;->s(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v2, v1, Lv3/h1;->p:Lt3/g;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lv3/e1;

    invoke-direct {v3, p0, v0}, Lv3/e1;-><init>(Lv3/f1;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1, v3}, Lt3/g;->t(Landroid/content/Context;Lv3/h0;)Lv3/i0;

    return-void

    :cond_3
    iget-object v1, p0, Lv3/f1;->b:Lv3/h1;

    iget-object v2, p0, Lv3/f1;->a:Lv3/d1;

    invoke-virtual {v2}, Lv3/d1;->a()I

    move-result v2

    invoke-static {v1, v0, v2}, Lv3/h1;->s(Lv3/h1;Lt3/b;I)V

    return-void
.end method
